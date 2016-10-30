



#The character starts in a room.
#The description of the room is printed. The description should give the user a hint about what to do next.
#A > symbol is shown to prompt the user for input.
#There are 4 options for movement input: N for north, S for south, E for east and W for west.
#If the character is able to move in the direction (s)he chose, a description of the new room is printed and the prompt is shown again for inputting additional movement commands or special room-specific commands.
#If the character is not able to move in the direction (s)he chose, a game-appropriate error message must be shown and the description of the current room along with the prompt must be repeated.
#A room's special commands can trigger any behavior desired. For example, if there are objects in the room, the user could pick up the objects and use them. If the room has another person in it the user could interact with the person. Use your imagination!



class Game_of_rooms

	 def initialize
    @rooms = [Room.new("", {"north" => "Forest", "south" => "Green"}), 
              Room.new("D", {"north" => "Dark", "right" => "Blue"}),
              Room.new("Blue", {"left" => "Green", "right" => "Forest"}),
              Room.new("Forest", {"south" => "Dark", "left" => "Blue"})]
    @movements = {"N"=> "north","S"=>"south","E"=>"right","W"=>"left"}
    @orders = ["Dance", "Sing"]
  end

	def start
	puts"You are in a dark place"
	puts "the movement can be either 'N','S','E', or 'W'"
	end


	def room1
		puts "You are in a dark room, there is a door at the north, where do you want to go?"
		puts = ">"
		puts= gets.chomp

	end

end

game = Game_of_rooms.new
puts room1



