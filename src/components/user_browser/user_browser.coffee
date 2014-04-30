"use strict"

React = require('react')
R = React.DOM
UserInfo = require('../user_info/user_info')
UserSwitcher = require('../user_switcher/user_switcher')

module.exports = React.createClass
  onUserChange: (newUser) ->
    console.log(newUser)
    this.setState user: newUser

  componentWillMount: ->
    this.setState user: this.props.defaultUser

  render: ->
    R.div className: 'user-browser',
      UserSwitcher(onUserChange: this.onUserChange)
      UserInfo(username: this.state.user)
