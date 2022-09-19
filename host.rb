class Game
  attr_accessor :current_player, :player2, :player1
  def initialize
    @current_player = Player1
    @player_1 = Player1
    @player_2 = Player2
    @question = nil
  end

  def start_game 
    while @player_1.lives > 0  && @player_2.lives > 0
      @question = Question.new
      puts "----- NEW TURN ----- "
      puts "#{@current_player.name}: #{@question.generate_question}?"
      answer = gets.chomp.to_i 

      if(@question.correct?(answer))
        puts "#{@current_player.name}: YES! You are correct!"
        puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.lives = @current_player.lives - 1
        puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
      end

      if @current_player == Player1
       @current_player = Player2
      elsif @current_player == Player2  
        @current_player = Player1
      end
    end
    
    if @player_1.lives > 0  || @player_2.lives > 0
      puts "----- GAME OVER -----"
      puts "Good Bye!"
    end   
  end
end

Newgame = Game.new 


