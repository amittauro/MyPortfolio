numbers = (1..20).to_a
fizzbuzz = numbers.map { |x|
  if x % 3 == 0 and x % 5 == 0
    'FizzBuzz'
  elsif x % 3 == 0
    'Fizz'
  elsif x % 5 == 0
    'Buzz'
  else
    x
  end
}
fizzbuzz.each { |x| puts x.to_s + "\n" }
