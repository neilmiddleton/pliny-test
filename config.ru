require "bundler"
Bundler.require

require "./lib/app"

$stdout.sync = true

Pliny.initialize!

require "./lib/models"

run Routes
