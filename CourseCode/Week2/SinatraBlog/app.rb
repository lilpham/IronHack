require 'sinatra'
require_relative("/lib/blog.rb")
require_relative("/lib/post.rb")

lillys_blog = Blog.new(title)
lillys_blog.add_post(post1) Post.new("Post 1", "16/7/10", "Hello, world. Welcome!", false)
lillys_blog.add_post(post2) Post.new("Post 2", "16/7/1", "Here I am again!", true)
lillys_blog.add_post(post3) Post.new("Post 3", "16/7/30", "You're still reading mah blog!", false)
lillys_blog.add_post(post4) Post.new("Post 4", "16/8/1", "YAY!!!", false)
lillys_blog.add_post(post5) Post.new("Post 5", "16/8/3", "Today is great", false)
lillys_blog.add_post(post6) Post.new("Post 6", "16/8/5", "Who are you?", true)
lillys_blog.add_post(post7) Post.new("Post 7", "16/8/7", "Hi again.", false)
lillys_blog.add_post(post8) Post.new("Post 8", "16/8/10", "Love my blog?", false)
lillys_blog.add_post(post9) Post.new("Post 9", "16/8/12", "Howdy", false)


get '/' do 
	@posts = lillys_blog.post
	erb :home 
end