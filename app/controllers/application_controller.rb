require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :form
    end

    post '/teams' do
      @teams = params[:team]
      @heroes = params[:hero]
      erb :team
    end
end
