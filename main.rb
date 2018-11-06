require 'pry'
require './player'
require './game'
require 'active_support/all'

game = Game.new
player1 = Player.new
player2 = Player.new

while player1.lives > 0 && player2.lives >0 do
  game.ask_question
  user_answer = gets.chomp().to_i
  correct_answer = game.right_answer

  if user_answer == correct_answer
    game.right_message
  else
    if game.player == 1
      player1.subtract_life
    else
      player2.subtract_life
    end
    game.wrong_message
  end

  game.score(player1.lives,player2.lives)

  game.switch_player

end

if player1.lives == 0
  game.game_over(player2.lives)
elsif player2.lives ==0
  game.game_over(player1.lives)
end
