"use strict"

React = require('react')

R = React.DOM

module.exports = React.createClass
  render: ->
    R.ul null,
      R.li onClick: (=> this.props.onUserChange('geelen')),
        'geelen',
      R.li onClick: (=> this.props.onUserChange('benschwarz')),
        'benschwarz',
      R.li onClick: (=> this.props.onUserChange('charliesome')),
        'charliesome'
