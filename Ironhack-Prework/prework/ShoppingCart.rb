
require 'date'
class ShoppingCart 
	def initialize
		@items = [ ]
	end
	
	def add_item(item) 
		@items.push(item)
	end
	
	def price_of_item 
		total = 0 
		@items.each do |item| 
			total += item.price
		end
		
		if @items.count > 5
			total * 0.9
		end
		total
	end
end

class Item 
	def initialize (name, price)
		@price = price
		@name = name 
	end 

	def price
		@price
	end 
end 

class Houseware < Item
	def price 
	
		if @price > 100 
			@price * 0.95
		else
			@price
		end
	end 
end 

class Fruit < Item 
	def price
	
		if Date.today.saturday? || Date.today.sunday? 
			@price * 0.09
		else
			@price 	
		end
	end 
end 


bananas = Fruit.new("Bananas", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)

lils_cart = ShoppingCart.new 
lils_cart.add_item(oj)
lils_cart.add_item(anchovies)
lils_cart.add_item(rice)
lils_cart.add_item(bananas)
lils_cart.add_item(vacuum_cleaner)

puts lils_cart.price_of_item 

