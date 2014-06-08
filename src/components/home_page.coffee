"use strict"

React = require('react')
R = React.DOM
HomePageNav = require('./home_page_nav')
HomePageHeader = require('./home_page_header')
HomePageBody = require('./home_page_body')

HomePageFooter = React.createClass
  render: ->
    R.footer()

module.exports = React.createClass
  render: ->
    R.div className: "home-page",
      HomePageNav(),
      HomePageHeader(),
      HomePageBody(),
      HomePageFooter()

