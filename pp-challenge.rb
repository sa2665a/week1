# ------- Pair Programming Challenge ------------
require 'pry'
class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end


ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]


def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

array_printer(array_of_languages)

puts "\nMap"

aged_languages = array_of_languages.map do |language|
	language.age += 1
	language
end
	puts "The programming languages aged one year are: "
	
array_printer(aged_languages)

puts "\nSort"

sorted_aged_languages = aged_languages.sort! do |a , b|
	b.age <=> a.age  
end
array_printer(sorted_aged_languages)

puts "\nDelete_if - Cambia array inicial"

new_language_array = array_of_languages.delete_if do |language|
	language.name == "Java"
end

array_printer (new_language_array)

puts "\nDelete_at - Cambia array inicial"

new2_language_array = array_of_languages.delete_at(5)
#puts new2_language_array.name
#array_printer (new2_language_array) 
array_printer(array_of_languages)

puts "\nShuffle"

shuffle_language_array = array_of_languages.shuffle {|language| language}
array_printer (shuffle_language_array)

puts "\nPick your own--------"
puts "\nReverse"

reversed_language_array = array_of_languages.reverse
array_printer(reversed_language_array)

puts "\nPush"

pushed_language_array = array_of_languages.push(java)
array_printer(pushed_language_array)

puts "\nFind"

find_language_array = array_of_languages.find {|language| language.age == 21}
array_printer(find_language_array)

