require_relative 'config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }
  use Rack::Flash

  configure do
    enable :sessions
    set :session_secret, "my_application_secret"
  end

  get '/' do
    erb :index
  end
end
