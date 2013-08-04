# setup require js
requirejs.config
  'paths':
    'backbone': 'lib/backbone'
    'underscore': 'lib/underscore'
    'jquery': 'lib/jquery'
    'react': 'lib/react'
    'bootstrap': 'lib/bootstrap'

  'shim':
    'backbone':
      deps: ['underscore', 'jquery']
      exports: 'Backbone'
    'bootstrap':
      deps: ['jquery']
      exports: 'Bootstrap'
    'underscore':
      exports: '_'
    'jquery':
      exports: '$'
    'react':
      exports: 'React'

requirejs ['main']