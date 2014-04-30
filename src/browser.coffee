"use strict";

React = require('react')
routes = require('./routes')

path = '/' #todo: this, obviously
React.renderComponent routes[path](),
                      document.getElementById('react-root')
