"use strict";

React = require('react')
Bacon = require('baconjs')
httpplease = require('httpplease')
  .use require('httpplease/lib/plugins/jsonparser')
R = React.DOM

UserInfo = React.createClass
  getInitialState: ->
    name: ''
    username: 'Loading...'
    avatar: ''

  componentWillMount: ->
    Bacon.fromNodeCallback(httpplease.get, 'https://api.github.com/users/geelen')
      .onValue (v) =>
        @setState name: v.body.name, username: v.body.login, avatar: v.body.avatar_url

  render: ->
    R.div className: 'whut',
      R.h1 null,
        @state.name
      R.h4 null,
        @state.username
      R.img src: @state.avatar

React.renderComponent(UserInfo(), document.body)
