require_relative 'config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
end




class App < Sinatra::Base
  configure do
    enable :Sessions
    set :session_secret, "pickles"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]

    session[:item] = @item
    @session = session

    erb :checkout
  end

end
