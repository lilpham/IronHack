require_relative("../lib/blog.rb")
require_relative("../app.rb")

RSpec.describe Blog do 
	before(:each) do 
		@blog = Blog.new
		@the_post = Post.new("Post 1", Time.now, "Hello, world!")

	end 

	it ("adds a post to an array of posts") do 
		@blog.add_post(@the_post)
		expect(@blog.posts[0]).not_to eq(nil)
	end 

	it ("lists the posts by the order of its date") do 
		post2 = Post.new("Post 2", Time.now - 100, "Here I am again!")
		@blog.add_post(post2)
		@blog.add_post(@the_post)
		expect(@blog.latest_posts[0].title).to eq("Post 1")

	end
end
