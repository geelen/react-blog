"use strict";

React = require('react')
R = React.DOM
UserBrowser = require('./components/user_browser/user_browser')

routes =
  '/': UserBrowser(defaultUser: 'geelen')
  '/users/benschwarz': UserBrowser(defaultUser: 'benschwarz')

module.exports = React.createClass
  getInitialState: ->
    route: this.props.startingRoute || '/'

  render: ->
    routes[this.state.route]
