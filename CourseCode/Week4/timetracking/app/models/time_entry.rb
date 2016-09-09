class TimeEntry < ApplicationRecord
  belongs_to :project
  validates :hours, :minutes, numericality: {only_float: true}
  validates :hours, :minutes, :date, :presence => true
end
