"use strict";

require('coffee-script/register')
path = require('path')
connect = require('connect')

React = require('react')
routes = require('./routes')

path = '/' #todo: this, obviously
console.log React.renderComponentToString routes[path]()
