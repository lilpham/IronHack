class Comment < ApplicationRecord
  belongs_to :concert

  validates :name, :date, :comment, presence: true
end
