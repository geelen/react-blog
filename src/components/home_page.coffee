"use strict"

React = require('react')
R = React.DOM
HomePageNav = require('./home_page_nav')

HomePageHeader = React.createClass
  render: ->
    R.header()

HomePageBody = React.createClass
  render: ->
    R.main()

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
