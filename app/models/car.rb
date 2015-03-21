class Car < ActiveRecord::Base
  has_many :rentals
  has_many :drivers, through: :rentals, source: :user
  validates :make, presence: true
end
