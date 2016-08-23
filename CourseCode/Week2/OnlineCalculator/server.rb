# server.rb
require "sinatra"

get "/" do
	erb :home
end

get "/add" do
  erb :add
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first + second
  redirect to("/result")
end

get "/result" do
	erb :result
end 

get "/subtract" do
	erb :subtract
end

post "/calculate_subtract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first - second
  "#{first} - #{second} = #{result}"
end

get "/multiply" do
	erb :multiply
end

post "/calculate_multiplication" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first * second
  "#{first} * #{second} = #{result}"
end

get "/divide" do
	erb :division
end

post "/calculate_division" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = first % second
  "#{first} % #{second} = #{result}"
end

