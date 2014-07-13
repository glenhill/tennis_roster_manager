class Team < ActiveRecord::Base
  validates :name, presence: true
  has_many :players
  has_many :contests
  # attributes:
  def create
    Team.create(team_params)
  end
  
  private
  
  def team_params
    params.require(:name)
  end
end
