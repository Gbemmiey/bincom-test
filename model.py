from sqlalchemy import Column, String, Integer, TIMESTAMP
from flask_sqlalchemy import SQLAlchemy
from config import Config

db = SQLAlchemy()


def setup_db(app, database_path=Config.SQLALCHEMY_DATABASE_URI):
    """
    setup_db(app)
        binds a flask application and a SQLAlchemy service
    """
    app.config["SQLALCHEMY_DATABASE_URI"] = database_path
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    db.app = app
    db.init_app(app)
    db.create_all()


class agentname(db.Model):
    __tablename__ = 'agentname'

    name_id = Column(Integer, primary_key=True)
    firstname = Column(String)
    lastname = Column(String)
    email = Column(String)
    phone = Column(String)
    pollingunit_uniqueid = Column(String)

    def __init__(self, firstname, lastname, email, phone, pollingunit_uniqueid):
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.phone = phone
        self.pollingunit_uniqueid = pollingunit_uniqueid


class announced_lga_results(db.Model):
    __tablename__ = 'announced_lga_results'

    result_id = Column(Integer, primary_key=True)
    lga_name = Column(String)
    party_abbreviation = Column(String)
    party_score = Column(String)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, result_id, lga_name, party_abbreviation,
                 party_score, entered_by_user,
                 date_entered, user_ip_address):
        self.result_id = result_id
        self.lga_name = lga_name
        self.party_abbreviation = party_abbreviation
        self.party_score = party_score
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


class announced_pu_results(db.Model):
    __tablename__ = 'announced_pu_results'

    result_id = Column(Integer, primary_key=True)
    polling_unit_uniqueid = Column(Integer)
    party_abbreviation = Column(String)
    party_score = Column(String)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, result_id, polling_unit_uniqueid, party_abbreviation,
                 party_score, entered_by_user,
                 date_entered, user_ip_address):
        self.result_id = result_id
        self.polling_unit_uniqueid = polling_unit_uniqueid
        self.party_abbreviation = party_abbreviation
        self.party_score = party_score
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


class announced_state_results(db.Model):
    __tablename__ = 'announced_state_results'

    result_id = Column(Integer, primary_key=True)
    state_name = Column(String)
    party_abbreviation = Column(String)
    party_score = Column(String)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, result_id, state_name, party_abbreviation,
                 party_score, entered_by_user,
                 date_entered, user_ip_address):
        self.result_id = result_id
        self.state_name = state_name
        self.party_abbreviation = party_abbreviation
        self.party_score = party_score
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


class announced_ward_results(db.Model):
    __tablename__ = 'announced_ward_results'

    result_id = Column(Integer, primary_key=True)
    ward_name = Column(String)
    party_abbreviation = Column(String)
    party_score = Column(String)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, result_id, ward_name, party_abbreviation,
                 party_score, entered_by_user,
                 date_entered, user_ip_address):
        self.result_id = result_id
        self.ward_name = ward_name
        self.party_abbreviation = party_abbreviation
        self.party_score = party_score
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


class lga(db.Model):
    __tablename__ = 'lga'

    unique_id = Column(Integer, primary_key=True)
    lga_id = Column(Integer)
    lga_name = Column(String)
    state_id = Column(Integer)
    lga_description = Column(String)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, unique_id, lga_id,
                 lga_name, lga_description,
                 entered_by_user,
                 date_entered, user_ip_address):
        self.unique_id = unique_id
        self.lga_id = lga_id
        self.lga_name = lga_name
        self.lga_description = lga_description
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


class party(db.Model):
    __tablename__ = 'party'
    id = Column(Integer, primary_key=True)
    partyid = Column(String)
    partyname = Column(String)

    def __init__(self, partyid, partyname):
        self.partyid = partyid
        self.partyname = partyname


class polling_unit(db.Model):
    __tablename__ = 'polling_unit'

    unique_id = Column(Integer, primary_key=True)
    polling_unit_id = Column(Integer)
    ward_id = Column(Integer)
    lga_id = Column(Integer)
    uniquewardid = Column(Integer)
    polling_unit_number = Column(String)
    polling_unit_name = Column(String)
    polling_unit_description = Column(String)
    lat = Column(String)
    long = Column(Integer)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, unique_id, polling_unit_id, ward_id,
                 lga_id, uniquewardid, polling_unit_number,
                 polling_unit_name, polling_unit_description,
                 lat, long,
                 entered_by_user,
                 date_entered, user_ip_address):
        self.unique_id = unique_id
        self.polling_unit_id = polling_unit_id
        self.ward_id = ward_id
        self.lga_id = lga_id
        self.uniquewardid = uniquewardid
        self.polling_unit_number = polling_unit_number
        self.polling_unit_name = polling_unit_name
        self.polling_unit_description = polling_unit_description
        self.lat = lat
        self.long = long
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


class states(db.Model):
    __tablename__ = 'states'
    state_id = Column(Integer, primary_key=True)
    state_name = Column(String)

    def __init__(self, state_name):
        self.state_name = state_name


class ward(db.Model):
    __tablename__ = 'ward'

    unique_id = Column(Integer, primary_key=True)
    ward_id = Column(Integer)
    ward_name = Column(String)
    lga_id = Column(Integer)
    ward_description = Column(String)
    entered_by_user = Column(String)
    date_entered = Column(TIMESTAMP)
    user_ip_address = Column(String)

    def __init__(self, unique_id, ward_id, ward_name,
                 lga_id, ward_description,
                 entered_by_user,
                 date_entered, user_ip_address):
        self.ward_id = ward_id
        self.ward_name = ward_name
        self.lga_id = lga_id
        self.ward_description = ward_description
        self.entered_by_user = entered_by_user
        self.date_entered = date_entered
        self.user_ip_address = user_ip_address


def add_record(record):
    db.session.add(record)
    db.session.commit()
    db.session.close()


def query_record(record):
    return db.session.query(record)


def close_transactions():
    db.session.commit()
    db.session.close()


def rollback():
    db.session.rollback()