class Numbers
  attr_accessor :number_1, :number_2
  attr_reader :player, :true_answer

  def initialize(player, number_1, number_2)
    @number_1 = number_1
    @number_2 = number_2
    @player = player
    @true_answer = number_1 + number_2

  end

  def question_prompt
    puts "Player #{player}: What does #{number_1} plus #{number_2} equal?"
    answer = gets.chomp.to_i
    if answer === true_answer
      puts "Player #{player}: CORRECT!"
    else
      puts "Player #{player}: Seriously?! NO."
    end
  end
end