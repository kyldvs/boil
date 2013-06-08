express = require 'express'
http = require 'http'
path = require 'path'

app = express();

app.configure(
  () ->
    app.set('port', process.env.PORT || 3000);
    app.use(express.favicon(path.join(__dirname, 'public/res/imgs/favicon.ico')));
    app.use(express.logger('dev'));
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(app.router);
    app.use(express.static(path.join(__dirname, 'public')));
    app.use(express.errorHandler());
);

app.get(
  '/',
  (req, res) -> res.send(200, 'success'),
);

http.createServer(app).listen(
  app.get('port'), 
  () -> console.log("Server listening on port " + app.get('port')),
);
