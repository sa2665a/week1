require "pry"

class Blog
	def initialize 
		@posts= []

	end

	def add_post(post)
		 @posts.push(post)
	end

	def publish_front_page
		@posts.each do |post|
			puts post.title
			puts "************"
			puts post.text
			puts "-------------"
		end
	end

end



class Post
	attr_accessor :title, :text
 def initialize(title, text,date)
 	@title =title
 	@text=text
 	@date=date

 end

end

class Sponsoredtitle < Post
	attr_accessor :title, :text, :date
	def initialized(title,text,date)
			@title = "******#{title}****"
		super(text,date)
	end
 end

# class Sponsoredtitle 
# 	attr_reader :title
# 	def initialize(title)
# 		@title = "********#{title}"
# 	end
# end

blog = Blog.new

blog1= Post.new("Simon's blog", "hola mucho gusto", "18 de octubre")
blog2= Sponsoredtitle.new("Victoria Blog", "mucho gusto", "24 de octubre")
blog3= Post.new("Vickylou", "mi apellido es Arosemena", "31 de octubre")

blog.add_post(blog1)
blog.add_post(blog2)
blog.add_post(blog3)

blog.publish_front_page