class Sandwich < ApplicationRecord
	has_many :sandwichIngredients
	has_many :ingredients, through:"sandwichIngredients"
	belongs_to :user
end