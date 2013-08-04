deps = [
  'jquery',
  'backbone',
  'react',
  'jsx/Hello'
]

define(
  deps,
  ($, Backbone, React, Hello) ->
    AppRouter = Backbone.Router.extend(
      routes:
        'index': 'hello'
        '*all': 'reset'

      hello: () ->
        React.renderComponent Hello(), $('#content')[0]

      reset: () ->
        $('#content').empty()
    )

    router = new AppRouter()
    Backbone.history.start()
)