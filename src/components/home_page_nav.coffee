"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  style: """
    .home-page__nav {
      padding: 2rem;
      text-transform: uppercase;
    }
    .home-page__nav > h1 {
      font-weight: 600;
    }
    .home-page__nav > ul > li {
      padding-left: 1rem;
    }
  """
  render: ->
    R.nav className: 'home-page__nav', 'data-flex': 'align-center',
      R.style dangerouslySetInnerHTML: {__html: this.style}
      R.h1 'data-flex-grow': 1,
        'Glen Maddern'
      R.ul 'data-flex': 'align-center',
        R.li {}, "About"
        R.li {}, "Projects"
        R.li {}, "Contact"
