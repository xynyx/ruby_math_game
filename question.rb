class Question
  attr_accessor :number_1, :number_2, :correct
  attr_reader :player, :true_answer

  def initialize(player, number_1, number_2)
    @number_1 = number_1
    @number_2 = number_2
    @correct = true
    @player = player
    @true_answer
  end

  def question_prompt
    operator = ["plus", "minus"][rand(2)]

    if operator == "minus"
      true_answer = number_1 - number_2
    else
      true_answer = number_1 + number_2
    end

    puts "Player #{player}: What does #{number_1} #{operator} #{number_2} equal?"
    answer = gets.chomp.to_i
    
    if answer === true_answer
      puts "Player #{player}: CORRECT!"
    else
      puts "Player #{player}: Seriously?! NO."
      @correct = false
    end
  end
end