# require './user'
# require './questions'
# # hidden = rand(200)
# # hidden = rand(200)

# # puts "Player1 Enter name:"
# # name1 = $stdin.gets.chomp
# # puts "Player2 Enter name:"
# # name2 = $stdin.gets.chomp

# # player1 = Person.new('sfdfs')
# # player2 = Person.new('May. As')
# # player1 = Person.new(name1)
# # player2 = Person.new(name2)

# players = []
# players[0] = User.new("AAAAAA")
# players[1] = User.new("BBBBB")

# current_player = 0
# game_over = false

# while !game_over do
#   # players[current_player].make_move

#   question = Questions.new
#   hidden = question.result
   
#   puts  " #{players[current_player].name} What does #{question.number} plus #{question.number2} equal? "

#   guess = $stdin.gets.chomp.to_i
   
#   if guess != hidden
#       puts "Seriously? No!"
#       players[current_player].lives -= 1
#       puts "P1 #{players[0].lives}/3 vs P2 #{players[1].lives}/3 "
#   else
#       puts "Yes! You are correct"
#       puts "P1 #{players[0].lives}/3 vs P2 #{players[1].lives}/3 "
#   end

  
#   if players[0].lives < 1 || players[1].lives < 1
#     game_over = true
# p "game over"

#   else

  
#     current_player = (current_player + 1) % 2
#   end
# end
