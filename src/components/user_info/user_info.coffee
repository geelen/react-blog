"use strict"

React = require('react')
Bacon = require('baconjs')
httpplease = require('httpplease').use(require('httpplease/lib/plugins/jsonparser'))
R = React.DOM

module.exports = React.createClass
  fromGithubResponse: (body) ->
    name: body.name, avatar: body.avatar_url, username: body.login

  getInitialState: ->
    name: ''
    avatar: ''
    username: 'Loading...'

  handleClick: ->
    this.setState username: this.state.username.toUpperCase()

  componentWillMount: ->
    Bacon.fromNodeCallback(httpplease.get, 'https://api.github.com/users/' + this.props.username)
    .onValue (v) =>
      this.setState this.fromGithubResponse(v.body)

  render: ->
    R.div className: 'whut', onClick: this.handleClick
      R.h1 style: { color: 'blue' },
          this.state.name
      R.h4 null,
          this.state.username
      R.img src: this.state.avatar
