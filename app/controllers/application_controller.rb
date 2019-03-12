require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
        erb :super_hero
    end
    post '/teams' do
        @team_hash = params[:team]
        erb :team
    end

end
