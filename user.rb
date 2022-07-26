class User
  # attr_accessor :lives
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
# def name 
#   @name = name
# end
end



# puts "Player1 Enter name:"
# name1 = $stdin.gets.chomp
# puts "Player2 Enter name:"
# name2 = $stdin.gets.chomp

# # player1 = Person.new('$stdin.gets.chomp.to_i')
# # player2 = Person.new('May. As')
# player1 = Person.new(name1)
# player2 = Person.new(name2)