sequence = [0, 1]
18.times { sequence.push(sequence[-2..-1].reduce(:+)) }
sequence.each { |x| puts x.to_s + "\n" }
