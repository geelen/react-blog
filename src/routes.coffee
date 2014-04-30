"use strict";

React = require('react')
R = React.DOM
UserBrowser = require('./components/user_browser/user_browser')

module.exports =
  '/': -> UserBrowser(defaultUser: 'geelen')
