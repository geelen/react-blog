"use strict"

React = require('react')
R = React.DOM

module.exports = React.createClass
  style: """
.preview-list__item {
  text-align: center;
  padding: 1rem;
  margin-bottom: 1rem;
}
.preview-list__item > header {
  margin-bottom: 1rem;
  line-height: 1.4;
}
.preview-list__item > header > h3 {
  font-size: 1.2rem;
  font-weight: 700;
}
.preview-list__item > a > img {
  width: 100%;
  border-radius: 1rem;
  box-shadow: 0 0 6px -4px;
}
"""
  render: ->
    item = this.props.item
    R.li className: "preview-list__item", 'data-flex-child': 'thirds', 'data-flex': 'column',
      R.style dangerouslySetInnerHTML: {__html: this.style}
      R.header 'data-flex-child': 'grow1',
        R.h3 {}, item.title
        R.h4 {}, item.strap
      R.a href: item.url, target: '_blank',
        R.img src: item.image
