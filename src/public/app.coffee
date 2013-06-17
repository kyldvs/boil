# setup require js
requirejs.config
  'paths':
    'backbone': 'lib/backbone'
    'underscore': 'lib/underscore'
    'jquery': 'lib/jquery'
    'react': 'lib/react'

  'shim':
    'backbone':
      deps: ['underscore', 'jquery']
      exports: 'Backbone'
    'underscore':
      exports: '_'
    'jquery':
      exports: '$'
    'react':
      exports: 'React'

requirejs ['main']