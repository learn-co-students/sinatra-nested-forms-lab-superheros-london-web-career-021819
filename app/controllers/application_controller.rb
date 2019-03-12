require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params[:team])
      # @team_name = params[:team_name]
      # @team_motto = params[:team_motto]

      params[:team][:hero].each {|superhero| SuperHero.new(superhero)}
      #params[:team][:hero].to_s
      @super_heros = SuperHero.all
      erb :super_hero


    end


end
