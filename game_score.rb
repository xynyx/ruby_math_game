class GameBoard
  attr_accessor :Player_1_HP, :Player_2_HP
  
  def initialize
    puts "~~~GAME START~~~"
    @Player1 = true
    @Player2 = false
    @Player_1_HP = 3
    @Player_2_HP = 3
  end

  def reduce_life(player)
    if player == 1
      @Player_1_HP -= 1
    else
      @Player_2_HP -= 1
    end
  end

  def print_score
    puts "P1: #{@Player_1_HP}/3 vs P2: #{@Player_2_HP}/3"
    puts "-----NEW TURN-----"
  end
  
end
