express = require 'express'
http = require 'http'
path = require 'path'

app = express()

app.configure(
  () ->
    app.set('port', process.env.PORT || 3000)
    app.set('views', __dirname + '/views')
    app.set('view engine', 'jade')
    app.use(express.favicon(
      path.join(__dirname, 'public/imgs/favicon.ico')
    ))
    app.use(express.logger('dev'))
    app.use(app.router)
    app.use(express.static(path.join(__dirname, 'public')))
    app.use(express.errorHandler())
)

app.get(
  '/',
  (req, res) -> res.render('index')
)

http.createServer(app).listen(
  app.get('port'),
  () -> console.log("Server listening on port " + app.get('port')),
)
