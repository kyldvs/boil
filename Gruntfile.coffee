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
          ignore = ['.coffee', '.styl']
          for type in ignore
            return false if endsWith path, type

          ignorePublic = ['.jade']
          for type in ignorePublic
            return false if endsWith path, type and contains path, '/public/'

          return true

    jade:
      public:
        expand: true
        cwd: 'src/public/'
        src: '**/*.jade'
        dest: 'bin/public/'
        ext: '.js'
        options:
          pretty: true
          client: true
          compileDebug: false

    stylus:
      compile:
        expand: true
        cwd: 'src'
        src: '**/*.styl'
        dest: 'bin/'
        ext: '.css'

  }

  # Default task
  grunt.registerTask 'default', ['build']

  # Aliases
  grunt.registerTask 'build', [
    'clean',
    'coffeelint',
    'coffee',
    'jade',
    'stylus',
    'copy',
  ]

  grunt.registerTask 'lint', ['coffeelint']
  grunt.registerTask 'start', []

  # Load npm tasks
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'