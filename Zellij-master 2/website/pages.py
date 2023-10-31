'''
Created on Mar. 11, 2021

python -m flask --app ./website/main.py  run --host=0.0.0.0 --reload -p 8089
PHP - 8060:80
@author: Pete Harris
'''
from flask import (
    Blueprint, render_template
)


bp = Blueprint("pages", __name__)

@bp.route("/", methods=["GET"])
def mainpage():
    return render_template("index.html")

