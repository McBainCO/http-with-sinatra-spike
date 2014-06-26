require "sinatra/base"

class MyApp < Sinatra::Application


  def initialize
    super
    @items = ["Channa Masala", "Chicken Tika Masala", "Saag Paneer"]

  end

  get "/" do
    erb :index, :locals => {:items => @items}
  end

  get "/items" do
  erb :items
  end

  get"/items/:identifier/" do
    identifier = params[:identifier]
    "You found item: #{identifier}"

  end



  run! if app_file == $0
end
