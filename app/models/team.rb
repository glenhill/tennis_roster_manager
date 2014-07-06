class Team < ActiveRecord::Base
  validates :name, presence: true
  has_many :players
  has_many :contests
  # attributes:
  attr_accessible :name
end
