"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  getInitialState: ->
    name: ''
    avatar: ''
    username: 'Loading...'

  fetchData: (username) ->
    Wort.http.get('https://api.github.com/users/' + username)
      .onValue (v) =>
        this.setState name: v.body.name, avatar: v.body.avatar_url, username: v.body.login

  componentWillMount: -> this.fetchData(this.props.username)
  componentWillReceiveProps: (newProps) ->
    if newProps.username != this.props.username
      this.setState this.getInitialState()
      this.fetchData(newProps.username)

  render: ->
    R.div className: 'user-info',
      R.h1 style: { color: 'blue' },
          this.state.name
      R.h4 null,
          this.state.username
      R.img src: this.state.avatar
