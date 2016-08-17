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

array_of_homes = [homes[0], homes[1], homes[2], homes [3], homes[4]]

# homes.each do |homes|
#   puts "#{homes.name} in #{homes.city}"
#   puts "Price: #{homes.price} a night"
# end

prices = homes.map do |the_price|
  # Return each home's city
the_price.price

p prices 

total_prices = array_of_homes.reduce(0.0) 