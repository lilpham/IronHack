require_relative("../lib/blog.rb")
require_relative("../app.rb")

RSpec.describe Blog do 
	before(:each) do 
		@blog = Blog.new
		@the_post = Post.new("Post 1", "16/7/10", "Hello, world. Welcome!")
	end 


	it ("adds a post to an array of posts") do 
		@blog.add_post(@the_post)
		expect(@blog.posts[0]).not_to eq(nil)
	end 
end