#app.rb 

require 'sinatra'
require "sinatra/reloader" if development?

require_relative("lib/blog.rb")
require_relative("lib/post.rb")

lillys_blog = Blog.new
lillys_blog.add_post Post.new("Hello", "16/7/10", "Hello, world. Welcome!")
lillys_blog.add_post Post.new("It's", "16/7/1", "Here I am again!")
lillys_blog.add_post Post.new("Me", "16/7/30", "You're still reading mah blog!")
lillys_blog.add_post Post.new("Adele", "16/8/1", "YAY!!!")
lillys_blog.add_post Post.new("Post 5", "16/8/3", "Today is great")
lillys_blog.add_post Post.new("Post 6", "16/8/5", "Who are you?")
lillys_blog.add_post Post.new("Post 7", "16/8/7", "Hi again.")
lillys_blog.add_post Post.new("Post 8", "16/8/10", "Love my blog?")
lillys_blog.add_post Post.new("Post 9", "16/8/12", "Howdy")


get '/' do 
	erb :home 
end

get '/posts' do
	@posts = lillys_blog.posts 

	erb :posts
end

get '/create_new_post' do
	erb :create_new_post
end


post '/submit_post' do
	@posts = lillys_blog.posts
	post = Post.new(params[:title], params[:date], params[:content])
	@posts.push(post)

	redirect to ("/posts")
end

get '/posts/details/:index' do
	index = params[:index].to_i
	@post = lillys_blog.posts[index]
	

	erb :posts_details
end



