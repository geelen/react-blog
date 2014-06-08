"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  render: ->
    R.div className: "preview-list",
      R.h2 {}, this.props.title
