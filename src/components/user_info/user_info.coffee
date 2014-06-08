"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  getInitialState: ->
    name: ''
    avatar: ''
    username: ''
    loading: true

  fetchData: (username) ->
    Wort.http.get 'https://api.github.com/users/' + username, (err, v) =>
      this.setState loading: false, name: v.body.name, avatar: v.body.avatar_url, username: v.body.login

  componentWillMount: -> this.fetchData(this.props.username)
  componentWillReceiveProps: (newProps) ->
    if newProps.username != this.props.username
      this.setState this.getInitialState()
      this.fetchData(newProps.username)

  render: ->
    usernameOrLoading = if this.state.loading then 'Loading...' else this.state.username
    R.div className: 'user-info',
      R.h1 style: { color: 'blue' },
          this.state.name
      R.h4 null, usernameOrLoading
      R.img src: this.state.avatar
