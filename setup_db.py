import sqlalchemy
from sqlalchemy import create_engine, text
from sqlalchemy import MetaData, Table, Column, Integer, VARCHAR
from sqlalchemy.engine import result
import logging
from codetiming import Timer
from config import Config
import re

logging.basicConfig(level=logging.INFO)
timer = Timer("example", text="Time spent: {:.6f}", logger=logging.info)

url = Config.SQLALCHEMY_DATABASE_URI

engine = create_engine(url, pool_size=5, pool_recycle=3600)

with timer:
    conn = engine.connect()

conn.close()

with timer:
    conn = engine.connect()

# meta = MetaData(bind=engine)
# MetaData.reflect(meta)
#
