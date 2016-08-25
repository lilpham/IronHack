class Blog 
	attr_accessor :posts
	def initialize
	@posts = []

	@page_start = 0
	@page_end = 3
	end

	def add_post(the_post)
		@posts.push(the_post)
	end 

	def publish_pages
		@posts.each do |the_post|
		if (the_post.sponsored) == true
			puts "*****#{the_post.title}*****"

		else 
			puts "#{the_post.title}"
			puts "#{the_post.date}"
			puts "#{the_post.text}"

			puts ""
		end
		end
	end
end