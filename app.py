from flask import Flask
from model import *

app = Flask(__name__)

with app.app_context():
    setup_db(app)


@app.route('/')
def hello_world():  # put application's code here
    return 'Hello World!'


@app.route('/pu', methods=['GET'])
def display_polling_unit_results():
    results = announced_pu_results.query.all()
    results_list = {}
    for r in results:
        result = {
            'id': r.result_id,
            'polling_unit_uniqueid': r.polling_unit_uniqueid,
            'party_abbreviation': r.party_abbreviation,
            'party_score': r.party_score,
            'entered_by_user': r.entered_by_user,
            'date_entered': r.date_entered,
            'user_ip_address': r.user_ip_address
        }
        results_list[str(r.result_id)] = result
    results_list['Number of Results'] = len(results)
    return results_list


if __name__ == '__main__':
    app.run()
