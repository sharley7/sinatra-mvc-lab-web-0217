require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
    erb :index
    end



    post '/piglatinize' do
      pig = PigLatinizer.new
      @pig_text = pig.to_pig_latin(params[:user_phrase])
      erb :piglatinize
    end


end
