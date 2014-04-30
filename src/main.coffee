"use strict";

React = require('react')
Bacon = require('baconjs')
httpplease = require('httpplease').use(require('httpplease/lib/plugins/jsonparser'))
R = React.DOM

UserInfo = React.createClass
  statics:
    fromGithubResponse: (body) -> name: body.name, avatar: body.avatar_url

  getInitialState: ->
    name: ''
    avatar: ''

  handleClick: ->
    this.setState username: this.state.username.toUpperCase()

  componentWillMount: ->
    Bacon.fromNodeCallback(httpplease.get, 'https://api.github.com/users/' + this.props.username)
      .onValue (v) =>
        this.setState UserInfo.fromGithubResponse(v.body)

  render: ->
    R.div className: 'whut',
      R.h1 { style: { color: 'blue' }, onClick: this.handleClick },
        this.state.name
      R.h4 null,
        this.props.username
      R.img src: this.state.avatar

React.renderComponent(UserInfo(username: 'charliesome'), document.body)
