"use strict";

require('coffee-script/register')
connect = require('connect')
http = require('http')
fs = require('fs')

routes = require('./routes')
global.Wort = require('./wort')
template = fs.readFileSync(__dirname + '/index.html').toString()

app = connect()
  .use (req, res, next) ->
    console.log("WE GOT A REQUEST FOR #{req.url} OMG")
    return next() if req.url.match /\.js$/
    console.log("THIS IS UNIX, I KNOW THIS")
    path = '/' #todo: this, obviously
    Wort.componentConstructor = routes[path]
    Wort.renderReactComponentToString (err, body, cache) ->
      console.log("SERVER RECEIVED")
      console.log(body)
      body += "\n<script>var WortCache = #{JSON.stringify(cache)}</script>"
      res.end template.replace(/<!--WORT-->/,body)
  .use(connect.static(__dirname + '/../dist'))

http.createServer(app).listen(3000, -> console.log("BOOTED UP ON http://localhost:3000 YO"));
