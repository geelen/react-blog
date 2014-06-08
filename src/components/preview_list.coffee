"use strict"

React = require('react')
R = React.DOM
PreviewListItem = require('./preview_list_item')

module.exports = React.createClass
  style: """
.preview-list {
  padding: 1rem 2rem;
}
.preview-list > h2 {
  text-align: center;
  text-transform: uppercase;
}
.preview-list > ol {
  margin: 2rem 0;
}
"""
  render: ->
    R.div className: "preview-list",
      R.style dangerouslySetInnerHTML: {__html: this.style}
      R.h2 {}, this.props.title
      R.hr {}
      R.ol 'data-flex': 'large-only justify-center align-stretch',
        this.props.items.map (item) ->
          PreviewListItem(item: item)
