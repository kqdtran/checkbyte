#!/usr/bin/env python

import os
from bottle import route, run, static_file, template, view, request
from edit_dist import edit_distance

@route('/static/js/<filename>')
def js_static(filename):
  return static_file(filename, root='./static/js')

@route('/static/img/<filename>')
def img_static(filename):
  return static_file(filename, root='./static/img')

@route('/static/css/<filename>')
def img_static(filename):
  return static_file(filename, root='./static/css')

@route("/")
@view("main")
def hello():
  return dict(title = "Bro do you even firewall?")

@route('/checkByte', method='POST')
def checkCodeDifference():
  oldCode = request.forms.get('old')
  newCode = request.forms.get('new')
  if oldCode and newCode:
    dist = edit_distance(oldCode, newCode)
    if dist is None:
      dist = -1
  else:
    dist = "check your code please..."
  return dict(result=dist)

if __name__ == "__main__":
  port = int(os.environ.get("PORT", 5000))
  run(host='0.0.0.0', port=port, reloader=True, debug=True)
