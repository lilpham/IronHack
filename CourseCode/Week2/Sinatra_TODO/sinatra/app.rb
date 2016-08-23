#app.rb

require "sinatra"

get "/" do 
	erb :home
end

get "/company" do 
	erb :company
end

get "/about" do 
	erb :about
end

get "/pizza" do 
	@pizza_ingredients = [
		"Cheese", "Dough", "Pineapple",
		"Mushrooms", "Salami"
	]

	erb :favorite_pizza
end 

# http://localhost:4567/users/name 
get "/users/:username" do 

	@user_name_string = params[:username]

	erb :user_profile
end 