"use strict";

var gulp = require('gulp'),
  $ = require('gulp-load-plugins')();

gulp.task('js', function () {
  gulp.src('src/browser.coffee', { read: false })
    .pipe($.plumber())
    .pipe($.browserify({
      transform: ['coffeeify'],
      extensions: ['.coffee']
    }))
    .pipe($.rename('browser.js'))
    .pipe(gulp.dest('dist'));
});

gulp.task('html', function () {
  gulp.src('src/*.html')
    .pipe(gulp.dest('dist'));
});

gulp.task('clean', function () {
  return gulp.src(['dist/*'], {read: false}).pipe($.clean());
});

gulp.task('build', ['js', 'html']);

gulp.task('default', ['build', 'connect'], function () {
  gulp.watch(['src/**/*.coffee'], ['js']);
  gulp.watch(['src/**/*.html'], ['html']);

  gulp.watch(['dist/**.*'], function (event) {
    return gulp.src(event.path)
      .pipe($.connect.reload());
  });
});

gulp.task('connect', function () {
  $.connect.server({
    root: ['dist'],
    port: 1337,
    livereload: {
      port: 1338
    }
  })
});
