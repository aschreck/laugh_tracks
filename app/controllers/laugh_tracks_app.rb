class LaughTracksApp < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  
  get "/comedians" do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else 
      @comedians = Comedian.all
    end 
  @specials = Special.all
    erb :dashboard
  end 

  # get "/comedians/:age" do
  #   @comedians = Comedian.where(params[:age])
  #   erb :'age-dashboard'
  # end 
end
