react = require 'react-tools'

endsWith = (str, suffix) ->
  str.indexOf(suffix, str.length - suffix.length) != -1

contains = (str, sub) ->
  str.indexOf(sub) >= 0

module.exports = (grunt) ->
  grunt.initConfig {
    pkg: grunt.file.readJSON 'package.json'

    clean:
      bin:
        expand: true
        src: 'bin'

    coffee:
      public:
        expand: true
        cwd: 'src/'
        src: '**/*.coffee'
        dest: 'bin/'
        ext: '.js'

    coffeelint:
      src:
        expand: true
        cwd: 'src/'
        src: '**/*.coffee'
      config:
        expand: true
        src: 'Gruntfile.coffee'

    copy:
      src:
        expand: true
        cwd: 'src'
        src: '**/*'
        dest: 'bin/'
        filter: (path) ->
          # Filetypes to ignore from anywhere within /src/
          ignore = ['.coffee', '.styl', '.jsx']
          for type in ignore
            return false if endsWith path, type

          # Filetypes to ignore, but only when in /public/
          ignorePublic = []
          for type in ignorePublic
            return false if endsWith path, type and contains path, '/public/'

          return true

    stylus:
      compile:
        expand: true
        cwd: 'src'
        src: '**/*.styl'
        dest: 'bin/'
        ext: '.css'

    jsx:
      compile:
        expand: true
        cwd: 'src'
        src: '**/*.jsx'
        dest: 'bin/'
        ext: '.js'
  }

  # Default task
  grunt.registerTask 'default', ['build']

  # Aliases
  grunt.registerTask 'build', [
    'clean',
    'coffeelint',
    'coffee',
    'jsx',
    'stylus',
    'copy',
  ]

  grunt.registerTask 'lint', ['coffeelint']

  # Compile jsx
  grunt.registerMultiTask 'jsx', 'Compile jsx into js', () ->
    this.files.forEach (file) ->
      src = grunt.file.read file.src
      transformed = react.transform src
      grunt.file.write file.dest, transformed
      grunt.log.writeln 'Converted jsx to ' + file.dest

  # Load npm tasks
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
