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