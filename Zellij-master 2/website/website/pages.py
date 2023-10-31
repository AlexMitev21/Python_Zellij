'''
Created on Mar. 11, 2021
source Zellij/bin/activate
python -m flask --app ./website/main.py  run --host=0.0.0.0 --reload -p 8088
* Running on http://127.0.0.1:8088
* Running on http://192.168.100.6:8088

How to add two repositories:

git remote add repository1 https://AlexMitev21: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@github.com/takinsolutions/Zellij.git
git remote add repository2 https://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@github.com/AlexMitev21/Python_Zellij.git

How to switch between repos:

git remote set-url repository1 https://AlexMitev21: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@github.com/takinsolutions/Zellij.git
git remote set-url repository2 https://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@github.com/AlexMitev21/Python_Zellij.git

Alias for changing the repos: 

git set-url-with banner-takin : is for git remote set-url repository1 https://AlexMitev21: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@github.com/takinsolutions/Zellij.git
git set-url-with-banner : is for git remote set-url repository2 https://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@github.com/AlexMitev21/Python_Zellij.git


@author: Pete Harris
'''
from flask import (
    Blueprint, render_template
)


bp = Blueprint("pages", __name__)

@bp.route("/", methods=["GET"])
def mainpage():
    return render_template("index.html")

