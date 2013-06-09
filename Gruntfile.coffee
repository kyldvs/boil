endsWith = (str, suffix) -> str.indexOf(suffix, str.length - suffix.length) != -1

module.exports = (grunt) ->
  grunt.initConfig {
    pkg: grunt.file.readJSON 'package.json'

    clean:
      build:
        expand: true
        src: 'bin'

    coffee:
      build:
        expand: true
        cwd: 'src/'
        src: '**/*.coffee'
        dest: 'bin/'
        ext: '.js'

    coffeelint:
      build:
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
        filter: (path) -> !endsWith path, '.coffee'

  }

  # Default task
  grunt.registerTask 'default', ['build']

  # Aliases
  grunt.registerTask 'build', ['clean', 'coffeelint:build', 'coffee', 'copy']
  grunt.registerTask 'lint', ['coffeelint']
  grunt.registerTask 'start', []

  # Load tasks
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-clean'