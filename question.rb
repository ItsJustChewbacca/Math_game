class Question
  attr_accessor(:answer)

  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @operator = rand(1..3)

    case @operator
    when 1
      @answer = @first_number + @second_number
      @op_string = '+'
    when 2
      @answer = @first_number - @second_number
      @op_string = '-'
    else
      @answer = @first_number * @second_number
      @op_string = '*'
    end
  end

  def to_string
    "Question: #{@first_number} #{@op_string} #{@second_number}? "
  end

  def is_correct?(stdin)
    if stdin == @answer
      return true
    else
      return false
    end
  end
end