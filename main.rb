require './user'
require './questions'


puts "Player1 Enter name:"
name1 = $stdin.gets.chomp
puts "Player2 Enter name:"
name2 = $stdin.gets.chomp


players = []
players[0] = User.new(name1)
players[1] = User.new(name2)

current_player = 0
game_over = false

while !game_over do
 
  question = Questions.new
  hidden = question.result
   
  puts  " #{players[current_player].name} What does #{question.number} plus #{question.number2} equal? "

  guess = $stdin.gets.chomp.to_i
   
  if guess != hidden
      puts "Seriously? No!"
      players[current_player].lives -= 1
      puts "P1 #{players[0].lives}/3 vs P2 #{players[1].lives}/3 "
  else
      puts "Yes! You are correct"
      puts "P1 #{players[0].lives}/3 vs P2 #{players[1].lives}/3 "
  end

  
  if players[current_player].lives < 1
    game_over = true
p "#{players[(current_player + 1) % 2].name} wins with a score #{players[(current_player + 1) % 2].lives}/3"

  else

  
    current_player = (current_player + 1) % 2
  end
end
