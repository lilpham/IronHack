class Concert < ApplicationRecord
	validates :artist, :venue, :city, :date,
	 :price, :description, presence: true 
	validates :date, :price, numericality: true 
	validates :city, :description, format: { :with => /\A[a-zA-Z]+\z/,
		      :message => "Only letters allowed" }
end
