"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  style: """
    .home-page__nav {
      padding: 2rem;
      background-color: white;
      text-transform: uppercase;
    }
    .home-page__nav > h1 {
      flex-grow: 1;
      font-weight: 600;
    }
    .home-page__nav__links > li {
      padding-left: 1rem;
    }
  """
  render: ->
    R.nav className: 'home-page__nav flex--midrow',
      R.style dangerouslySetInnerHTML: {__html: this.style}
      R.h1 {},
        'Glen Maddern'
      R.ul className: 'home-page__nav__links flex--midrow',
        R.li {}, "About"
        R.li {}, "Projects"
        R.li {}, "Contact"
