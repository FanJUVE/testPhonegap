require "sinatra"
require "json"

class MyApp < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/parsing' do
    content_type :json
    { all: 20, single: 1 }.to_json
  end
end