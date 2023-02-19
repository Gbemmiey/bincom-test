from flask import Flask
from flask import render_template, url_for, redirect, jsonify

from sqlalchemy import create_engine, func
from sqlalchemy.orm import sessionmaker
from sqlalchemy.sql import functions

from model import *
from config import Config

import numpy as np

app = Flask(__name__)

engine = create_engine(Config.SQLALCHEMY_DATABASE_URI)
Session = sessionmaker(engine)
session = Session()

with app.app_context():
    setup_db(app)


@app.route('/')
def hello_world():  # put application's code here
    return 'Hello World!'


@app.route('/pu/<int:pu_id>', methods=['GET'])
def display_polling_unit_results(pu_id):
    results = session.query(announced_pu_results, polling_unit).filter(
        announced_pu_results.polling_unit_uniqueid == pu_id) \
        .filter(announced_pu_results.polling_unit_uniqueid == polling_unit.uniqueid)
    pol_res = []

    unit_name = ''
    unit_description = ''
    options = {}

    for res, po in results:
        result = {
            'id': res.result_id,
            'polling_unit_uniqueid': res.polling_unit_uniqueid,
            'party_abbreviation': res.party_abbreviation,
            'party_score': res.party_score
        }
        pol_res.append(result)
        unit_name = po.polling_unit_name
        unit_description = po.polling_unit_description

    options['unit_name'] = unit_name
    options['unit_description'] = unit_description

    # results = announced_pu_results.query.filter_by(polling_unit_uniqueid=pu_id)
    # results_list = []
    # for r in results:
    #     result = {
    #         'id': r.result_id,
    #         'polling_unit_uniqueid': r.polling_unit_uniqueid,
    #         'party_abbreviation': r.party_abbreviation,
    #         'party_score': r.party_score
    #     }
    #     results_list.append(result)

    return render_template('/views/polling_unit.html', data=pol_res, options=options)


@app.route('/polling-units')
def display_polling_units():
    results = polling_unit.query.all()
    results_list = []
    for r in results:
        result = {
            'id': r.id,
            'unique_id': r.uniqueid,
            'ward_id': r.ward_id,
            'lga_id': r.lga_id,
            'polling_unit_name': r.polling_unit_name,
            'polling_unit_number': r.polling_unit_number,
            'polling_unit_description': r.polling_unit_description
        }
        results_list.append(result)

    return render_template('/views/polling_units.html', data=results_list)


@app.route('/lga')
def display_lgas():
    results = session.query(lga).all()
    lga_list = []
    for result in results:
        r = {
            'uniqueid': result.uniqueid,
            'lga_name': result.lga_name,
            'lga_description': result.lga_description,
            'state_id': result.state_id
        }
        lga_list.append(r)
    options = {
        'number': len(results)
    }

    return render_template('/views/lgas.html', data=lga_list, options=options)


@app.route('/lga/<int:lga_id>')
def get_count(lga_id):
    results = session.query(announced_pu_results, polling_unit, lga) \
        .filter(announced_pu_results.polling_unit_uniqueid == polling_unit.uniqueid) \
        .filter(lga.uniqueid == lga_id) \
        .all()

    vote_sum = 0
    total = 0

    res_list = []
    for res, pol, lg in results:
        r = {
            'score': res.party_score,
            'party': res.party_abbreviation,
            'polling_unit_name': pol.polling_unit_name,
            'lga_name': lg.lga_name
        }
        total = total + int(res.party_score)
        res_list.append(r)

    i = 0
    vote_sum = 0
    while i < len(res_list):
        vote_sum += int(r['score'])
        i += 1

    scores = []
    for r in res_list:
        scores.append(int(r['score']))
    print(scores)
    print(np.sum(scores))

    ret = {
        'status_code': 200,
        'sum': sum(scores),
        'scores': scores,
        'message': res_list
    }

    return jsonify(ret)


if __name__ == '__main__':
    app.run()
