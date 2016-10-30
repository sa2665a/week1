class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

puts homes[0].name
puts homes[1].name
puts homes[2].name
puts homes[3].name
puts homes[4].name


puts "\neach"

homes.each do |hm|
  puts hm.name
end

puts "\nblock"

homes.each { |hm|
  puts hm.name
}

puts "\neach info"
homes.each do |hm|
  puts "#{hm.name} in #{hm.city} price: #{hm.price} per night"
end

puts "\n map"
cities = homes.map do |hm|
  hm.city
end

puts cities

puts "\nmaps exercise"
prices = homes.map do |hm|
  hm.price
end

puts prices

puts prices.inject{ |sum, el| sum + el }.to_f / prices.size

puts "\nReduce"

total_capacities = 0.0

homes.each do |hm|
  total_capacities = total_capacities + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

total_price = 0.0
homes.each do |hm|
  total_price = total_price + hm.price
end

puts "The average price is:"
puts total_price / homes.length

total_price = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end

puts "The average price is:"
puts total_price / homes.length

puts "\n each with index"

homes.each_with_index do |hm,index|
	puts "Home Number #{index +1}: #{hm.name}"
end

san_juan_homes = homes.select do |hm|
  hm.city == "San Juan"
end
 

home_41_dollars = homes.find do |hm|
	hm.price==41
end
puts "the first home that costs $41 is "
puts home_41_dollars.name


sorted =homes.sort do |home1, home2|
	home1.capacity <=> home2.capacity
end

rng = 1..42

rng.each do |number|
  puts "The next number in the range is: #{number}"
end

double = rng.map do |number|
  number * 2
end

puts double





