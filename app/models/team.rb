class Team < ActiveRecord::Base
  validates :name, presence: true
  has_many :players
  has_many :contests
  # attributes:
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to new_team_path
    end
    
  end
  
  private
  
  def team_params
    params.require(:name)
  end
end
