class Players
  attr_accessor :health, :turn
  attr_reader :player


  def initialize(player)
    @health = 3
    @turn = false
    @player = player
  end



end
