require 'pry'
require './game_score'
require './Players'
require './questions'
require './numbers'

new_game = GameBoard.new
player_1 = Players.new(1)
player_2 = Players.new(2)

player_1.turn = true

player_2_questions = Questions.new(2)

player_2_questions.two_numbers

question_1 = Numbers.new(1, player_2_questions.number_1, player_2_questions.number_2)

question_1.question_prompt

# puts player_2_questions.number_1

binding.pry

puts "done"

# raise player_1_questions.inspect
# puts player_1.turn
# puts player_1.player

# puts player_2.health
# new_game