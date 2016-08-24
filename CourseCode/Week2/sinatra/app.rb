#app.rb

require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

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

# ["a", "b", "c"]

users = [
	{ :username => "starwars", :name => "Star Wars", :bio => "The official home of Star Wars on Twitter", :avatar => "https://pbs.twimg.com/profile_images/631535425333518336/D-i_GqpT_400x400.jpg"},
	{ :username => "celinedion", :name => "Celine Dion", :bio => "Posts signed / Publications signées TC = Team Céline", :avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg"},
	{ :username => "lilphammy", :name => "Lillian Pham", :bio => "The best is yet to come", :avatar => "https://scontent-mia1-1.cdninstagram.com/t51.2885-19/s320x320/13113704_255627384789707_272335598_a.jpg"}
]

# http://localhost:4567/users/name 
get "/users/:username" do 

	@user_name_string = params[:username]

	@the_user = users.find { |the_user| the_user[:username] == @user_name_string }

	# binding.pry

	if @the_user == nil
		status(404)
		erb :no_user
	else
		erb :user_profile
	end
end 

get "/leadership" do 
	erb :leadership
end

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end 

get "/session_show" do 
	"Now in the session: " + session[:saved_value]
end