module.exports = (app) ->
  # entrance point to the page, no other routes should render anything
  app.get('/', (req, res) -> res.render('index'))
