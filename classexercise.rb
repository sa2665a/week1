
class Dog
attr_accessor :name, :breed
attr_writer :sound
attr_reader :smelled



	def initialize (name, breed, sound)
		@name = name
		@breed = breed
		@sound = sound
		@smelled = []
		
	end
		
	def bark
	puts @sound
	end

	def track
		puts "Sniff"
	end

	def smell (namespeople)
		file = File.open(@name+ ".txt", "a")
		file.puts namespeople
		file.close
	end 

	def smelled
		file = File.open(@name+".txt","r")
		people = file.readlines
		file.close
		people
	end
	

		
end		


class PetDog < Dog
	attr_accessor :owner

	def initialize (name,breed,sound,owner)
		super(name,breed,sound)
		@owner=owner
	end	

	def roll
		puts "Roll....Roll....Roll"
	end

	def track
		puts "Sniff Sniffffff"
	end		

	def fetch (toy)
		puts " *drops #{toy}*..."
	end	



end		

p1= Dog.new("toby", "hotdog", "jip,jip")
pd1 = PetDog.new("Sam", "Huskey", "Woof","Simon")

p1.bark
p1.track
pd1.fetch ("ball")
puts pd1.owner
pd1.owner = "new owner"
puts pd1.owner
p1.smell ("joe")
p1.smell("mary")
p1.smell ("jose")
puts p1.smelled

