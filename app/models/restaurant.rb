class Restaurant < ActiveRecord::Base
  has_many :suggestions
  has_many :users, through: :suggestions

  validates :name, presence: true
  validates :address, presence: true
end
