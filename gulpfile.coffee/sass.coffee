gulp   = require('gulp')
sass = require ('gulp-sass')
minicss = require('gulp-mini-css')

watchPath = ["src/sass/**/*.sass"]
sourcePath = ["src/sass/*.sass"]
destinationPath = "./html-preview/theme"

module.exports = ()->
  console.log sourcePath
  console.log destinationPath


  gulp.src("src/sass/*.sass").pipe(sass({indentedSyntax: true}).on('error', sass.logError)).pipe(gulp.dest(destinationPath)).pipe(minicss({ext:'-min.css'})).pipe(gulp.dest(destinationPath))






module.exports.watch = watchPath
module.exports.displayName = "sass"
#
