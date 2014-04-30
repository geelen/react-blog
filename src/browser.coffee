"use strict";

React = require('react')
routes = require('./routes')
window.Wort = require('./wort')

path = '/' #todo: this, obviously
React.renderComponent routes[path](),
                      document.getElementById('react-root')
