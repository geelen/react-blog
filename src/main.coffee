"use strict";

React = require('react')
UserInfo = require('./components/user_info/user_info')

React.renderComponent(UserInfo(username: 'geelen'), document.getElementById('react-root'))
