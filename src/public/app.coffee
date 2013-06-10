# setup require js
requirejs.config
  'paths':
    'backbone': 'lib/backbone'
    'underscore': 'lib/underscore'
    'jquery': 'lib/jquery'
    'react': 'lib/react'
    'jsx': 'lib/jsx'
    'JSXTransformer': 'lib/JSXTransformer'

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
    'JSXTransformer':
      exports: 'JSXTransformer'

requirejs ['main']