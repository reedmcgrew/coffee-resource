###
# Module dependencies.
###

express = require('express')
routes = require('./routes')
Resource = require('express-resource')

app = express.createServer()
module.exports = app

# Configuration
app.configure(() ->
  app.set('views', __dirname + '/views')
  app.set('view engine', 'jade')
  app.use(express.bodyParser())
  app.use(express.methodOverride())
  app.use(app.router)
  app.use(express.static(__dirname + '/public'))
)

app.configure('development', () ->
  app.use(express.errorHandler({ dumpExceptions: true, showStack: true }))
)

app.configure('production', () ->
  app.use(express.errorHandler())
)

# Routes (for web app)
app.get('/', routes.index)

# Resources (for RESTful API)
app.resource('forums',require('./resources/forum'))

app.listen(3000)
console.log("Express server listening on port %d in %s mode", app.address().port, app.settings.env)
