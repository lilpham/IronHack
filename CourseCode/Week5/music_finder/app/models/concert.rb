class Concert < ApplicationRecord
	has_many: :comments 
	validates :artist, :venue, :city, :date, :price, :description, presence: true
	validates :price, numericality: true 
end
