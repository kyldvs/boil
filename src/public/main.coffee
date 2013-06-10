deps = [
  'jquery',
  'backbone',
  'react',
  'jsx!x/commentBox'
]

define deps, ($, Backbone, React, CommentBox) ->
  AppRouter = Backbone.Router.extend(
    routes:
      'home': 'home'

    home: () ->
      console.log '/#/home'
      React.renderComponent CommentBox(), $('#content')[0]
  )

  router = new AppRouter()
  Backbone.history.start()