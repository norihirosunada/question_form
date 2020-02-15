require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'
require './models'

before do
end

get '/' do
    erb :index
end

