require 'pry'
require 'active_support/all'

class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def subtract_life
    @lives -= 1
  end

  def reset
    @lives = 3
  end
end