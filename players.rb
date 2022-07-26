class Person
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
# def name 
#   @name = name
# end
end

player1 = Person.new('El. Ron')
player2 = Person.new('May. As')




puts player1
p player2