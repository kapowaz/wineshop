# encoding: utf-8
class WineShop < Sinatra::Base
  error 403 do
    erb :'errors/forbidden'
  end

  get "/403" do
    erb :'errors/forbidden'
  end

  error 404 do
    erb :'errors/not_found'
  end

  get "/404" do
    erb :'errors/not_found'
  end

  error 500 do
    erb :'errors/server_error'
  end

  get "/500" do
    erb :'errors/server_error'
  end
end