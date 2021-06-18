require 'sinatra/base'
require 'sinatra/reloader'

class DiaryManager < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'My Diary'
  end

  get '/diary/new' do
    erb :diary_new
  end

  post '/diary' do
    p session[:diary_entry] = params[:diary_entry]
    @diary_entry = session[:diary_entry]
    erb :diary
  end


  run! if app_file == $0
end