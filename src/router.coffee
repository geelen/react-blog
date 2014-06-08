"use strict";

React = require('react')
R = React.DOM
UserBrowser = require('./components/user_browser/user_browser')
HomePage = require('./components/home_page')

routes =
  '/': HomePage()

module.exports = React.createClass
  getInitialState: ->
    route: this.props.startingRoute || '/'

  render: ->
    routes[this.state.route]
