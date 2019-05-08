require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/name/:id' do
  @name = all_the_names.select do |name|
    name.id == params[:id]
  end.first
  erb :'/names/show.html'
end

end
