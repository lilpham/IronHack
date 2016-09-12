class Concert < ApplicationRecord
	validates :artist, :venue, :city, :date, :price, :description, presence: true
	validates :price, numericality: true 
end
