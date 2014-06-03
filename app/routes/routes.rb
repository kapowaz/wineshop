# encoding: utf-8
class WineShop < Sinatra::Base
  before do
    @page = {
      title: "Wine Shop"
    }
  end

  get "/" do
    erb :hierarchy
  end
  
  get "/content.md" do
    erb :content, locals: { content: markdown(:product) }
  end
  
  get "/content" do
    erb :product
  end
end
