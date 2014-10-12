require 'rubygems'
require 'bundler/setup'
require 'active_support/all'
#require 'factory_girl'
#require 'faker'

#require_relative '../factories/events_factory.rb'
#require_relative '../factories/venues_factory.rb'
#require_relative '../factories/event_planners_factory.rb'

# Load Sinatra Framework (with AR)
require 'sinatra'
require 'sinatra/activerecord'


APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Sinatra configuration
configure do
  set :root, APP_ROOT.to_path
  set :server, :puma

  enable :sessions
  set :session_secret, ENV['SESSION_KEY'] || 'lighthouselabssecret'

set :protection, :except => [:http_origin]
use Rack::Protection::HttpOrigin, :origin_whitelist => ['http://localhost','http://localhost:6666','http://127.0.0.1','http://127.0.0.1:6666','http://0.0.0.0','http://0.0.0.0:6666','http://54.69.74.3','http://54.69.74.3:6666','http://172.31.39.107','http://172.31.39.107:6666']


  set :views, File.join(Sinatra::Application.root, "app", "views")
end

# Set up the database and models
require APP_ROOT.join('config', 'database')

# Load the routes / actions
require APP_ROOT.join('app', 'actions')
