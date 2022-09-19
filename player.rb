class Player 
  attr_accessor :lives, :name

  def initialize(num)
    @lives = 3
    @name = "Player#{num}"
  end 

  def lose_life
    self.lives = self.lives - 1
  end
end

Player1 = Player.new(1)
Player2 = Player.new(2)

