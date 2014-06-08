"use strict";

React = require('react')
Router = require('./router')
window.Wort = require('./wort')

path = location.pathname
React.renderComponent Router(startingRoute: path),
                      document.getElementById('react-root')
