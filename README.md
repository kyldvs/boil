Boiler Plate Application
========================

This is some boiler plate for creating web applications.

### 1. Libraries Used

  + [Node](http://nodejs.org/)

    Because I like Node, and it has over 37,000 modules ready to use.

  + [Express](http://expressjs.com/)

    Seems like a solid web application framework, with plenty of support.

  + [Jade](http://jade-lang.com/)

    Makes writing HTML much less painful.

  + [Stylus](http://learnboost.github.io/stylus/)

    Makes writing CSS much less painful. Another option would be
    [Less](http://lesscss.org/). I decided against Less purely based on
    personal preference and my familiarity with Stylus.

  + [Coffeescript](http://coffeescript.org/)

    This makes writing javascript much less painful. I was considering
    using [Typescript](http://www.typescriptlang.org/) instead. I decided
    against it because I plan on using this to repidly develop many small
    projects where the benefit of using types will not outweigh the benefits
    of being able to generate javascript more quickly using coffee script.

  + [Backbone](http://backbonejs.org/)

    I am using this mostly for routing a single page web application. It also
    has nice functionality to describe and persist models to databases.

  + [Grunt](http://gruntjs.com/)

    Very simple and powerful build tool.

  + [Require](http://requirejs.org/)

    This is a nice clientside dependency management system for javascript. I
    believe this is incredibly important because it allows you to properly
    build an application split up into many modules that depend on other
    modules within your application.

  + [React](http://facebook.github.io/react/),
    [JSX](http://facebook.github.io/react/docs/syntax.html)

    React allows you to easily make components that render onto the page that
    are very dynamic and when updating, update the DOM efficiently. JSX is used
    often in React and makes the code much cleaner.

    Another option here would be [AngularJS](http://angularjs.org/). I believe
    AngularJS is very heavy weight and bloated for what it does, (just compare
    the apis of each framework:
    [React](http://facebook.github.io/react/docs/reference.html),
    [Angular](http://docs.angularjs.org/api/)) but it would server a similar
    purpose.

  + [Jquery](http://jquery.com/), [Underscore](http://underscorejs.org/)

    These two libraries are like the swiss army knife of web development.


### 2. Setup

  1. Install global packages: `sudo npm install -g grunt-cli coffee-script`
  2. Install local packages: `npm install`
  3. Build application: `grunt`
  4. Start application: `npm start`
  5. Navigate to: `localhost:5000/#/index`

### 3. Language

  Most of the code in the boiler plate is coffeescript. Unfortunately JSX
  doesn't play well with coffeescript,
  [yet?](https://github.com/facebook/react/issues/47). To use JSX transformer
  use the .jsx filetype, and make sure to include the jsx header. The build
  system will compile coffeescript and jsx to plain old js.

  Look at `html/main.coffee` and `html/jsx/hello.jsx` to see how to use jsx
  and coffeescript.

### 4. Jade

  There is a very simple jade file to act as an entrance point into the
  application. `view/index.jade` doesn't have any major layout code. My
  intention is that you will mostly render the page through different React
  modules that you can mount onto `#content`, see `html/main.coffee` for an
  example.

### 5. Startup

  There are two startup scripts located in `scripts`. Executing `npm start`
  launches the server by using `scripts/dev.sh` and is intended for testing.
  To launch a server on port 80 that will persist even if you close the
  terminal you can execute `npm run prod` with root privileges. This starts the
  application with `scripts/prod.sh` and will also write all logs to a file.