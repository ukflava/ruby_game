require './user'
require './questions'
# hidden = rand(200)
# hidden = rand(200)

# puts "Player1 Enter name:"
# name1 = $stdin.gets.chomp
# puts "Player2 Enter name:"
# name2 = $stdin.gets.chomp

# player1 = Person.new('sfdfs')
# player2 = Person.new('May. As')
# player1 = Person.new(name1)
# player2 = Person.new(name2)

players = []
players[0] = User.new
players[1] = User.new # or AI.new

current_player = 0
game_over = false

while !game_over do



  # the User#make_move and AI#make_move method are where you
  # differentiate between the two - checking for game rules
  # etc. should be the same for either.
  players[current_player].make_move

  if check_for_game_over
    game_over = true


  else

    
    # general method to cycle the current turn among
    # n players, and wrap around to 0 when the round 
    # ends (here n=2, of course)
    current_player = (current_player + 1) % 2
  end
end


# player2.lives -= 1

# p player1
# p player2

question1 = Questions.new
hidden = question1.result
 
puts  " #{player2}  in #{question1.number} plus #{question1.number2} "
# guess = gets.to_i
guess = $stdin.gets.chomp.to_i
 
if guess != hidden
    puts "Seriously? No!"
    player2.lives -= 1
    puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3 "
else
    puts "Yes! You are correct"
    puts "P1 #{player1.lives}/3 vs P2 #{player2.lives}/3 "
end

# player2.lives -= 1

# p player1
# p player2