class Player < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :team
  has_many :matches
  attr_accessible :name
end
