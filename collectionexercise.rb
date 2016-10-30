class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

  Nicolas= Home.new("Nicolas's place", "Lima", 2, 28),
  Simon = Home.new("Simon's place", "Bogota", 5, 46),
  Josh = Home.new("Josh's place", "Buenos Aires", 3, 39),
  Gonzalo = Home.new("Gonzalo's place", "Quito", 2, 32),
  Manuel = Home.new("Manuel's place", "San Juan", 4, 49),
  Nia= Home.new("Nia's place", "San Juan", 6, 54),
  Santi = Home.new("Santi's place", "Madrid", 3, 40),
  Josue = Home.new("Josue's place", "Marbella", 3, 45),
  Rodrigo = Home.new("Rodrigo's place", "Málaga", 4, 62),
  Manuela = Home.new("Manuela's place", "Quito", 5, 48)

 array_of_homes = [Nicolas, Simon, Josh, Gonzalo, Manuel, Nia, Santi, Josue, Rodrigo, Manuela] 


def array_printer(array)
  array.each do |home|
     puts "Name: #{home.name} | City: #{home.city} |  Capacity: #{home.capacity} | Price: #{{home.price}}"
  end
end

array_printer(array_of_homes)


