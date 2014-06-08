"use strict";

React = require('react')
routes = require('./routes')
window.Wort = require('./wort')

path = '/' #todo: this, obviously
React.renderComponent routes(),
                      document.getElementById('react-root')
