class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true

  has_many :suggestions
  has_many :users, through: :suggestions
  has_many :votes
end
