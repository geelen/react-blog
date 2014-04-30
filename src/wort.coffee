"use strict"

React = require('react')
Bacon = require('baconjs')
httpplease = require('httpplease').use(require('httpplease/lib/plugins/jsonparser'))

class ClientWort
  http: httpplease

class ServerWort
  cache:
    http:
      get: {}
  constructor: ->
    @http =
      get: (url, cb) =>
        if @cache.http.get[url]
          # This _has_ to be immediate, otherwise React asplodes
          cb(null, @cache.http.get[url])
        else
          @externalRequestsPending = true
          httpplease.get url, (err, response) =>
            @cache.http.get[url] = response
            @attemptRendering()

  attemptRendering: ->
    @externalRequestsPending = false
    body = React.renderComponentToString(@componentConstructor())
    @complete(null, body) if !@externalRequestsPending

  renderReactComponentToString: (cb) ->
    @complete = cb
    @attemptRendering()

#todo: surely there's a better way to detect client/server
runningOnServer = !window?
module.exports =
  if runningOnServer
    new ServerWort()
  else
    new ClientWort()
