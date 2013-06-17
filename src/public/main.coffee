deps = [
  'jquery',
  'backbone',
  'react',
  'jsx/hello'
]

define deps, ($, Backbone, React, Hello) ->
  AppRouter = Backbone.Router.extend(
    routes:
      # The route /#/index calls the method hello
      'index': 'hello'

    hello: () ->
      # Mount the react component <Hello> onto dom element #content
      React.renderComponent Hello(), $('#content')[0]
  )

  router = new AppRouter()
  Backbone.history.start()