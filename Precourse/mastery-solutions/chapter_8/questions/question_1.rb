# Write a program that calculates the score for a word in Scrabble.
# It should:
# * Ask the user for a word e.g. `apple`.
# * `puts` the score for the word in Scrabble by totalling the points
#   for each letter in the word.
#   * Points for each letter:
#     * 0 points: blank tile
#     * 1 point: E, A, I, O, N, R, T, L, S, U
#     * 2 points: D, G
#     * 3 points: B, C, M, P
#     * 4 points: F, H, V, W, Y
#     * 5 points: K
#     * 8 points: J, X
#     * 10 points: Q, Z

# * Note: You can assume that the user will enter a word that only
#   contains letters and blanks.  You can assume the word will be in
#   uppercase.

puts "what is your word?"
word = gets.chomp
scrabble = { " " => 0, "EAIONRTLSU" => 1, "DG" => 2, "BCMP" => 3, "FHVWY" => 4,
  "K" => 5, "JX" => 8, "QZ" => 10 }
list = word.chars.map { |l| scrabble.keys.find { |x| x.include?(l) } }
puts list.map { |w| scrabble.fetch(w) }.reduce(0, :+)
