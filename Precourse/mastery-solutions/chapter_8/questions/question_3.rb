# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "enter a category"
category = gets.chomp
sports = people.map { |x| x.fetch("sport") }.uniq
fruits = people.map { |x| x.fetch("fruit") }.uniq
if category == "sport"
  names = sports.map { |x| people.select { |l| l.values.include? x } }
  names = names.map { |x| x.map { |l| l.fetch("name") } }
  list = names.map.with_index { |x, i| x.insert(0, sports[i]) }
else
  names = fruits.map { |x| people.select { |l| l.values.include? x } }
  names = names.map { |x| x.map { |l| l.fetch("name") } }
  list = names.map.with_index { |x, i| x.insert(0, fruits[i]) }
end
list.each { |x| puts x }
