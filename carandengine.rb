#class Car 
=begin def initialize(engine)
		@engine = engine
	end
		
	def sound
		"trac trac" + @engine.sound
	end
end

class Engine
	attr_reader :sound
	def initialize (sound)
		@sound = sound
	end
	def make_noise 
		"ruum ruuum"
	end	
end

carengine = Car.new(Engine.new('frercew'))
carengine1 = Car.new(Engine.new('frfref'))
puts carengine.sound
puts carengine1.sound
=end

class Camion
	attr_reader :numberofwheels :makesnoise
	def initialize (numberofwheels, makesnoise)
		@numberofwheels = numberofwheels
		@makesnoise= makesnoise
	end

end

class Convertible
	def initialize(camion)
		@camion = camion
	end
	

	def 

end

class Camioneta	

end

class Number_of_Wheels

end

class Different_noises

end
