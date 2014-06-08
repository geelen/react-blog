"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  style: """
    .home-page__header {
      padding: 1rem;
    }
    .home-page__header > h1 {
      margin: 1rem;
      text-align: center;
      font-size: 1.5rem;
    }
    .home-page__header > h1 > strong {
      font-size: 3em;
      display: block;
      font-weight: 300;
      margin: 1rem 0;
    }
    .home-page__header > h1 > small {
      font-weight: 400;
    }
    .home-page__header > h1 > span {
      font-weight: 600;
    }
    .home-page__header > img {
      margin: 1rem;
      max-width: 40vw;
      height: auto;
      border-radius: 1rem;
    }
    .breakpoint-small .home-page__header > img {
      max-width: 66vw;
    }
  """
  render: ->
    R.header className: 'home-page__header', 'data-flex': 'align-center justify-center wrap',
      R.style dangerouslySetInnerHTML: {__html: this.style}
      R.img 'data-flex-shrink': 0, src: '/assets/images/me_720.jpg'
      R.h1 'data-flex-shrink': 0, 'data-flex-grow': 1, 'data-chevron': 'down',
        R.small {}, "My name is"
        R.strong {}, "Glen Maddern"
        R.small {}, "and I do "
        "rad web stuff"
