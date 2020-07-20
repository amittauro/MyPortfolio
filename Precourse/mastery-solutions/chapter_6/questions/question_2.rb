# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

puts "player 1, what is your move?"
player1 = gets.chomp
puts "player 2, what is your move?"
player2 = gets.chomp
if player1 == player2
  puts "It's a draw."
end
options = { 1 => ['rock', 'scissors'], 2 => ['paper', 'rock'], 3 => ['scissors', 'paper'] }
player1wins = [player1, player2]
# player2wins = [player2,player1]
if options.value?(player1wins)
  puts 'Player 1 wins'
else
  puts 'Player 2 wins'
end
