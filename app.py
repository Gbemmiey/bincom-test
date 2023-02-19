from flask import Flask
from flask import render_template, url_for, redirect

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

from model import *
from config import Config

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


if __name__ == '__main__':
    app.run()
