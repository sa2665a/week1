require 'pry'

puts "enter your username"
username = gets.chomp

puts "enter your password"
password = gets.chomp

if Authenticator.authenticate(username,password)
	puts "Type in some text"
	text = gets.chomp
	puts "your text has #{WordCounter.count(text)}"
else
	puts "Incorrect username or password"
end

class User
	def login
	  puts "enter your username"
		username = gets.chomp

		puts "enter your password"
		password = gets.chomp

		while !Authenticator.authenticate(username,password)
		puts "Incorrect username or password"
		puts "enter your username"
		username = gets.chomp

		puts "enter your password"
		password = gets.chomp

		end

	end

end


class Authenticator
	def self.authenticate(username,password)
		if username == "simon" && password == "hola"
			true
		else
			false
		end	
	end
end

binding.pry


#class CountLetters
	#def self.count(letters)
		#a = gets.chomp
		#a.chars.group_by(&:chr).map { |k, v| [k, v.size] }
	#end
#end

class ReverseText
	def self.reverse (text)
		text.reverse ("")
	end
end


class WordCounter
	def self.count(text)
		text.split (" ").length
	end	
end



