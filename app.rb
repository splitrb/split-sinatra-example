class SplitExample < Sinatra::Base
  enable :sessions
  helpers Split::Helper

  get "/" do
    erb :index
  end

  get '/complete' do
    ab_finished('link_text')
    erb :complete
  end
end
