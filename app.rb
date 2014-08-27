#!/usr/bin/env ruby

require 'sinatra/base'

class App < Sinatra::Base
  set :port, 8080
  set :public_folder, 'site'
  set :logging, true

  get '/' do send_file 'site/index.html' end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

