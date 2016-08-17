class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end
	
	def add_ingredient_list(ingredient)
		@ingredients.push(ingredient)
	end
	
	def price_of_milkshake
	price = 0
	total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient| 
			total_price_of_milkshake += ingredient.price
	end
	total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price
	def initialize (name, price)
		@name = name
		@price = price
	end
end

class ShakeShop
	def initialize
		@milkshakes = []
	end 
	
	def add_milkshakes_list(milkshake)
		@milkshakes.push(milkshake)
	end
	
	def price_of_order
 		total_price_of_order = 0 
			@milkshakes.each do |milkshake|
			total_price_of_order += milkshake.price_of_milkshake
			end
		total_price_of_order
	end 
end 

lillys_milkshake = MilkShake.new
coffee = Ingredient.new("Coffee", 2)
walnuts = Ingredient.new("Walnuts", 3)
lillys_milkshake.add_ingredient_list(coffee)
lillys_milkshake.add_ingredient_list(walnuts)

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 6)
chocolate = Ingredient.new("Chocolate", 3)
nizars_milkshake.add_ingredient_list(banana)
nizars_milkshake.add_ingredient_list(chocolate)

lillys_shakeshop_order = ShakeShop.new
lillys_shakeshop_order.add_milkshakes_list(lillys_milkshake)
lillys_shakeshop_order.add_milkshakes_list(nizars_milkshake)

puts lillys_shakeshop_order.price_of_order
