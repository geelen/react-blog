"use strict"

React = require('react')
R = React.DOM
PreviewList = require('./preview_list')

Projects = [
  title: '<x-gif>'
  strap: 'The GIF tag the internet deserves'
  url: 'http://geelen.github.io/x-gif/'
  image: '/assets/images/projects/x_gif.jpg'
,
  title: 'dumb.domains'
  strap: 'The internet is dumb and awesome again'
  url: 'http://dumb.domains'
  image: '/assets/images/projects/dumb_domains.png'
,
  title: 'Goodfilms'
  strap: 'Goodfilms - Social Movie Reviews'
  url: 'http://goodfil.ms'
  image: '/assets/images/projects/goodfilms.jpg'
]

Talks = [
  title: 'A GIF Odyssey'
  strap: 'Mountain West JS, 2014'
  url: 'https://www.youtube.com/watch?v=evzlNvboGTs'
,
  title: 'The Z Dimension'
  strap: 'Web Directions South, 2013'
  url: 'https://www.youtube.com/watch?v=xFtgUguXHMw'
,
  title: "JavaScript's Slightly Stricter Mode"
  strap: 'Web Directions Code, 2013'
  url: 'https://www.youtube.com/watch?v=gq95_h-IrHo'
]


module.exports = React.createClass
  render: ->
    R.main {},
      PreviewList(items: Projects, more: '/projects', title: 'Projects')
      PreviewList(items: Talks, more: '/talks', title: 'Talks')