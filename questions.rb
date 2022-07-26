class Questions
  attr_accessor :result, :number, :number2
  def initialize()
    @number = rand(100)
    @number2 = rand(100)
    @result = number+number2
  end

  end


 