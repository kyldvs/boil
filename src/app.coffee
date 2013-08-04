express = require 'express'
http = require 'http'
path = require 'path'
routes = require './routes'

app = express()

# Common Configuration
app.configure () ->
  app.set('views', __dirname + '/view')
  app.set('view engine', 'jade')
  app.use(express.favicon(
    path.join(__dirname, 'html/res/img/favicon.ico')
  ))
  app.use(express.logger('dev'))
  app.use(app.router)
  app.use(express.static(path.join(__dirname, 'html')))
  app.use(express.errorHandler())

# Development configuration
if (app.get('env') == 'development')
  app.set('port', 5000)

# Production configuration
if (app.get('env') == 'production')
  app.set('port', 80)

# set up routes
routes(app)

# start the server
http.createServer(app).listen(
  app.get('port'),
  () -> console.log("Server listening on port " + app.get('port')),
)
