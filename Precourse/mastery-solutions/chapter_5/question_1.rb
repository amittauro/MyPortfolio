predictions = { 0 => 'It is certain', 1 => 'It is decidely so', 2 => 'Ask again later',
  3 => 'Outlook not so good', 4 => 'Very doubtful' }
n = Random.new.rand(5)
puts predictions.fetch(n)
predictions.values.each { |x| puts x + "|" }
