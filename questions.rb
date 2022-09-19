class Question
  attr_accessor :question, :number1, :number2
  def initialize
    @question = ""
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def generate_question
    @question = "What does #{@number1} plus #{@number2} equal?"
  end

  def correct?(player_answer)
   @number1 + @number2 == player_answer
  end
end






