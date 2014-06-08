"use strict";

React = require('react')
R = React.DOM
UserBrowser = require('./components/user_browser/user_browser')
ReactRouter = require('react-router-component')
Pages = ReactRouter.Pages
Page = ReactRouter.Page
NotFound = ReactRouter.NotFound

NotFoundPage = React.createClass
  componentDidMount: ->
    console.log this.refs.router
  render: ->
    console.log this.refs.router
    R.div null

module.exports = React.createClass
  render: ->
    Pages ref: 'router',
      Page {path: '/geelen', handler: UserBrowser}, {}
      NotFound {handler: NotFoundPage}
