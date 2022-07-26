class Questions
  attr_accessor :result, :number, :number2
  def initialize()
    @number = rand(10)
    @number2 = rand(10)
    @result = number+number2
  end

  end


 