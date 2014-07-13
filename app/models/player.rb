class Player < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :team
  has_many :matches

  def create
    Player.create(player_params)
  end
  
  private
  
  def player_params
    params.require(:name)
  end
end
