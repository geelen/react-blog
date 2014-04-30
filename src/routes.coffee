"use strict";

React = require('react')
R = React.DOM
UserBrowser = require('./components/user_browser/user_browser')
UserSwitcher = require('./components/user_switcher/user_switcher')

module.exports =
  '/': -> UserBrowser(defaultUser: 'geelen')
