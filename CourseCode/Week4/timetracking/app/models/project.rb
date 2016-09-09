class Project < ApplicationRecord
	has_many :time_entries
	validates :name, :description, :presence => true,
			  :format => { :with => /\A[a-zA-Z]+\z/,
		      :message => "Only letters allowed" }
    validates :name, :uniqueness => true, :length => {maximum: 30}

    def self.clean_old
    	where("created_at > ?", 7.days.ago).destroy_all
    end
end

Project.clean_old