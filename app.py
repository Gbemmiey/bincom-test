from flask import Flask
from flask import render_template, url_for, redirect, jsonify

from sqlalchemy import create_engine, func, and_
from sqlalchemy.orm import sessionmaker
from sqlalchemy.sql import functions

from model import *
from config import Config

import numpy as np
import pandas as pd

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
    # Working query - Returns a list of rows
    results = session.query(announced_pu_results).outerjoin(polling_unit,
                                                            announced_pu_results.polling_unit_uniqueid == polling_unit.uniqueid).join(
        lga).filter(polling_unit.lga_id == lga_id).all()

    # Working query
    # Returns a list of rows
    # n_que = session.query(announced_pu_results).select_from(polling_unit).filter_by(lga_id=lga_id).join(
    #     announced_pu_results, polling_unit.uniqueid == announced_pu_results.polling_unit_uniqueid).all()

    total = 0
    if not results:
        total = 0
    else:
        for row in results:
            total += int(row.party_score)

    ret = {
        'status_code': 200,
        'sum': total
    }

    return jsonify(ret)


@app.route('/new-result')
def display_result_form():
    results = session.query(states).all()
    res_list = []
    for r in results:
        res = {
            'state_id': r.state_id,
            'state_name': r.state_name
        }
        res_list.append(res)

    return render_template('forms/result.html', data=res_list)


@app.route('/state/<int:state_id>')
def get_lgas_in_state(state_id):
    results = session.query(lga).filter(lga.state_id == state_id).all()
    lga_list = []
    for r in results:
        res = {
            'lga_id': r.lga_id,
            'uniqueid': r.uniqueid,
            'lga_name': r.lga_name
        }
        lga_list.append(res)

    data = {
        'status_code': 200,
        'data': lga_list
    }
    return jsonify(data)


@app.route('/ward/<int:lga_id>')
def get_wards_in_lgas(lga_id):
    results = session.query(ward).filter(ward.lga_id == lga_id).all()
    ward_list = []
    for r in results:
        res = {
            'ward_id': r.ward_id,
            'ward_name': r.ward_name,
            'uniquewardid': r.uniqueid,
            'uniqueid': r.uniqueid
        }
        ward_list.append(res)

    data = {
        'status_code': 200,
        'data': ward_list
    }
    return jsonify(data)


@app.route('/pol/<int:ward_id>')
def get_pus_in_ward(ward_id):
    results = session.query(polling_unit).filter(polling_unit.uniquewardid == ward_id).all()
    pu_list = []
    for r in results:
        res = {
            'pu_id': r.polling_unit_id,
            'pu_name': r.polling_unit_name,
            'uniqueid': r.uniqueid
        }
        pu_list.append(res)

    data = {
        'status_code': 200,
        'data': pu_list
    }
    return jsonify(data)


if __name__ == '__main__':
    app.run()
