# Make sure that all gulp libs below are installed using `npm install`

'use strict'

series = require("gulp").series
parallel = require("gulp").parallel
watch = require("gulp").watch
task = require("gulp").task


#expressTask = require("./express.coffee")

#uiTask = require("./ui.coffee")

sassTask = require("./sass.coffee")

task "sass", sassTask
task "default", sassTask


task "bot", (cb)->

  watch sassTask.watch, sassTask
