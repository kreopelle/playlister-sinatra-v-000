require 'sinatra/base'
require 'rack-flash'

class ApplicationController < Sinatra::Base
  use Rack::Flash
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  configure do

  end

  get '/' do
    erb :index
  end
end
