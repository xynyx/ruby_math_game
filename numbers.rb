class Numbers
  attr_accessor :number_1, :number_2
  attr_reader :player

  def initialize(player, number_1, number_2)
    @number_1 = number_1
    @number_2 = number_2
    @player = player
  end

  def question_prompt
    puts "Player #{player}: What does #{number_1} plus #{number_2} equal?"
    answer = gets.chomp
  end
end
