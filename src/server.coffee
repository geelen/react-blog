"use strict";

require('coffee-script/register')
connect = require('connect')
http = require('http')
fs = require('fs')

routes = require('./routes')
global.Wort = require('./wort')

path = '/' #todo: this, obviously
Wort.componentConstructor = routes[path]
Wort.template = fs.readFileSync(__dirname + '/index.html')
Wort.renderReactComponentToString (err, body) ->
    console.log("SERVER RECEIVED")
    console.log(body)
#
#app = connect()
#  .use (req, res) ->
#    res.end('Hello from Connect!\n')
#
#http.createServer(app).listen(3000);
