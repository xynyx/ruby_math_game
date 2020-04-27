class Numbers
  attr_reader :player
  attr_accessor :number_1, :number_2

  def initialize(player)
    @player = player
  end

  def two_numbers
      puts "Player #{player}: Please select two numbers between 1 and 20"
      @number_1 = gets.chomp.to_i
      @number_2 = gets.chomp.to_i
      if (number_1 > 20 || number_1 < 0) || (number_2 < 0 || number_2 > 20)
        puts "Please pick a number between 0 - 20!"
        self.two_numbers
      end
  end

end