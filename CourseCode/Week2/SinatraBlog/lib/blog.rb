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

	def latest_posts
		@posts.sort do |a,b|
			b.date <=> a.date
		end
	end

	def publish_pages
		@posts.each do |the_post| 
			puts "#{the_post.title}"
			puts "#{the_post.date}"
			puts "#{the_post.text}"
			puts ""
		end
	end
end