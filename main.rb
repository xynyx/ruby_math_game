require 'pry'
require './game_score'
require './question'
require './numbers'

game = GameBoard.new

players = [1, 2]

while (game.Player_1_HP > 0 && game.Player_2_HP > 0) 
  player_questions= Numbers.new(players[1])

  player_questions.two_numbers

  question = Question.new(players[0], player_questions.number_1, player_questions.number_2)

  question.question_prompt

  if !question.correct
    game.reduce_life(players[0])
  end

  game.print_score
  players.reverse!
end

print "Player #{players[0]} wins with a score of "

if (game.Player_2_HP === 0)
  puts "#{game.Player_1_HP}/3!"
else
  puts "#{game.Player_2_HP}/3!"
end

puts "GAME OVER!"