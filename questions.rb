class Questions
  attr_reader :player
  attr_accessor :number_1, :number_2

  def initialize(player)
    @player = player
  end

  def two_numbers
    # if !turn
      puts "Player #{player}: Please select two numbers between 1 and 20"
      @number_1 = gets.chomp
      @number_2 = gets.chomp
    # end
  end

end