{exec} = require 'child_process'

task 'build', 'Build project from src/*.coffee to bin/*.js', ->
  exec 'coffee --compile --output bin/ src/', (err, stdout, stderr) ->
    throw err if err
    process.stdout.write stdout + stderr
    console.log 'Coffescript compiled'

task 'copy', 'Copy resources from src to bin only if missing or newer', ->
  exec 'cp -ru src/. bin', (err, stdout, stderr) ->
    throw err if err
    process.stdout.write stdout + stderr
    console.log 'Resources copied'

task 'clean', 'Remove all files from bin to clean up resources that might have been deleted', ->
  exec 'rm -r bin', (err, stdout, stderr) ->
    throw err if err
    process.stdout.write stdout + stderr
    console.log 'Project cleaned'