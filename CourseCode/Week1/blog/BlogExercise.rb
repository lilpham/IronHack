class Blog 
	def initialize(title)
	@title = title
	@posts = []

	@page_start = 0
	@page_end = 3
	end

	def add_post(the_post)
		@posts.push(the_post)
	end 

	def next_page 

	def publish_pages
		@posts.each do |the_post|
			if (the_post.sponsored) == true
			puts "*****#{the_post.title}*****"

		else 
			puts "#{the_post.title}"
		end
			puts "#{the_post.date}"
			puts "#{the_post.text}"

			puts ""

		end
		puts "1 2 3"
			puts "> next"
			puts ""
	end

	
end

class Post 
	attr_accessor(:title, :date, :text, :sponsored)

	def initialize (title, date, text, sponsored)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end 

end


#----------inputs----------#


lillys_blog = Blog.new("Lilly's Blog")
#------------ initialize(title)

lillys_blog.add_post(post1) Post.new("Post 1", "16/7/10", "Hello, world. Welcome!", false)
lillys_blog.add_post(post2) Post.new("Post 2", "16/7/1", "Here I am again!", true)
lillys_blog.add_post(post3) Post.new("Post 3", "16/7/30", "You're still reading mah blog!", false)
lillys_blog.add_post(post4) Post.new("Post 4", "16/8/1", "YAY!!!", false)
lillys_blog.add_post(post5) Post.new("Post 5", "16/8/3", "Today is great", false)
lillys_blog.add_post(post6) Post.new("Post 6", "16/8/5", "Who are you?", true)
lillys_blog.add_post(post7) Post.new("Post 7", "16/8/7", "Hi again.", false)
lillys_blog.add_post(post8) Post.new("Post 8", "16/8/10", "Love my blog?", false)
lillys_blog.add_post(post9) Post.new("Post 9", "16/8/12", "Howdy", false)
#add each post

lillys_blog.publish_pages
#you have to call the method on the blog you created 
