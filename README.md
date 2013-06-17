Boiler Plate Application
========================

This is some boiler plate for creating web applications.

### 1. Libraries Used

  + [Node](http://nodejs.org/)
  + [Express](http://expressjs.com/)
  + [Jade](http://jade-lang.com/)
  + [Coffeescript](http://coffeescript.org/)
  + [Grunt](http://gruntjs.com/)
  + [Jquery](http://jquery.com/)
  + [Backbone](http://backbonejs.org/)
  + [Stylus](http://learnboost.github.io/stylus/)
  + [Underscore](http://underscorejs.org/)
  + [React](http://facebook.github.io/react/)
  + [JSX](http://facebook.github.io/react/docs/syntax.html)

### 2. Setup

  1. install npm packages: `npm install`
  2. build application: `grunt`
  3. start application: `npm start`

### 3. Language

  Most of the code in the boiler plate is coffeescript. Unfortunately JSX doesn't play well with coffeescript, [yet?](https://github.com/facebook/react/issues/47). To use JSX transformer use the .jsx filetype, and make sure to include the jsx header. The build system will compile coffeescript and jsx to plain old js.

  Look at `public/main.coffee` and `public/jsx/hello.jsx` to see how to use jsx and coffeescript.

### 3. Build System

  Grunt is a nice easy to use build system with plenty of support.

### 4. Routing

  This application is set up to be a single page application. Set up the routes in `public/main.coffee`.

### 5. Styling

  My personal preference is stylus. Specify the stylesheets in `views/css.jade`.

### 6. Jade

  There is a very simple jade file to act as an entrance point into the application. `views/index.jade` doesn't have any major html, instead mount different react classes onto `#content`, see `public/main.coffee`.



