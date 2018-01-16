class Player
  attr_accessor(:name, :score, :correct_answers)
  def initialize(name, score=3)
    @name = name
    @score = score
    @correct_answers = 0
  end

  def won
    @correct_answers += 1
  end

  def lost
    @score -= 1
  end
end


