require 'pry'
require 'active_support/all'

class Game
  attr_accessor :player, :question

  def initialize
    @question = [0,0]
    @player = 1
  end

  def ask_question
    number1 = rand(0...20)
    number2 = rand(0...20)
    @question[0] = number1
    @question[1] = number2
    puts "Player #{@player}: What does #{@question[0]} plus #{@question[1]} equal?"
  end

  def switch_player
    if @player == 1
      @player = 2
    else
      @player = 1
    end
  end

  def right_answer
    @question[0] + @question[1]
  end

  def right_message
    puts "Player #{@player}: YES! You are correct."
  end

  def wrong_message
    puts "Player #{@player}: Seriously? No!"
  end

  def score(score1,score2)
    puts "P1: #{score1}/3 vs P2: #{score2}/3"
    puts "----- NEW TURN -----"
  end

  def game_over(score)
    puts "Player #{@player} wins with a score of #{score}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end


end