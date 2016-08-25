require_relative("../lib/blog.rb")

RSpec.describe Blog do 
	before(:each) do 
		@blog = Blog.new(title)
	end 

	it ("returns a list of posts") do 
		expect(@blog.posts).to include(@posts)
	end 
end