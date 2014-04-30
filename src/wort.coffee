"use strict"

React = require('react')
Bacon = require('baconjs')
httpplease = require('httpplease').use(require('httpplease/lib/plugins/jsonparser'))

class ClientWort
  http:
    get: (url) -> Bacon.fromNodeCallback(httpplease.get, url)

class ServerWort
  http:
    get: ->
      console.log("GETTING HTTP BRAH")
      console.log(arguments)
      onValue: ->
        console.log("CALLBACK RECEIVED")
        console.log(arguments)
  renderReactComponentToString: (component) ->
    React.renderComponentToString(component)

#todo: surely there's a better way to detect client/server
runningOnServer = !window?
module.exports =
  if runningOnServer
    new ServerWort()
  else
    new ClientWort()
