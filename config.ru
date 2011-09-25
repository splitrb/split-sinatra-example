require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'split/dashboard'

Bundler.require

require './app'

# Split::Dashboard.use Rack::Auth::Basic do |username, password|
#   username == 'admin' && password == 'password'
# end

run Rack::URLMap.new \
  "/"       => SplitExample.new,
  "/split" => Split::Dashboard.new