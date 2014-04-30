"use strict";

require('coffee-script/register')
path = require('path')
connect = require('connect')

routes = require('./routes')
global.Wort = require('./wort')

path = '/' #todo: this, obviously
console.log Wort.renderReactComponentToString routes[path]()
