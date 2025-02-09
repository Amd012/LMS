from flask import Flask,g,session,redirect,render_template,request,jsonify,Response
from markupsafe import escape
from Misc.functions import *

app = Flask (__name__)
app.secret_key = '#$ab9&^BB00_.'

#Setting DAO Class
from Models.DAO import DAO

DA0 = DAO(app)

#Registering bluerprints
from routes.user import user_view
from routes.book import book_view
from routes.admin import admin_view

#Registering custom functions to be used within templates
app.jinja_env.globals.update(
    ago=ago,
    str=str,
)

app.register_blueprint(user_view)
app.register_blueprint(book_view)
app.register_blueprint(admin_view)