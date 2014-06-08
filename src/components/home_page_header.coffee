"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  style: """
    .home-page__header {
      padding: 2rem;
    }
    .home-page__header > h1 {
      font-weight: 700;
      font-size: 4rem;
      line-height: 4rem;
      text-align: center;
      padding-right: 2rem;
    }
    .home-page__header > h1 > small {
      font-size: 0.5em;
      font-weight: 400;
      display: block;
    }
    .home-page__header > img {
      max-width: 40vw;
      -webkit-flex-shrink: 0;
      flex-shrink: 0;
      height: auto;
      border-radius: 1rem;
    }
  """
  render: ->
    R.header {className: 'home-page__header', 'data-flex': 'midrow'},
      R.style dangerouslySetInnerHTML: {__html: this.style}
      R.h1 'data-flex-grow': 1,
        R.small {}, "My name is"
        "Glen Maddern"
        R.small {}, "and I do"
        "web stuff"
      R.img className: 'flex--shrink0', src: '/assets/images/me_720.jpg'
