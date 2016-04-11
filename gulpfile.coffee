gulp = require 'gulp'
coffee = require 'gulp-coffee'
plumber = require 'gulp-plumber'
coffeelint = require 'gulp-coffeelint'

gulp.task 'coffee', ->
    gulp.src('gt-unsafe-filter.coffee')
    .pipe(plumber())
    .pipe(coffeelint('coffeelint.json'))
    .pipe(coffeelint.reporter())
    .pipe(coffee(bare: true))
    .pipe(gulp.dest('./'))

gulp.task 'default', ['coffee']
