bottles = 99

while num > 2
  puts bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + "bottles of beer"
  bottles = bottles - 1
  puts "Take one down and pass it around, " + bottles.to_s + " bottles of beer on the wall"
  puts
end

puts "Two bottles of beer on the wall, two bottles of beer"
puts "Take one down and pass it around, one bottle of beer on the wall"
puts
puts "One bottle of beer on the wall, one bottle of beer"
puts "Take it down and pass it around, no more bottles of beer on the wall"
puts
puts "No more bottles of beer on the wall, no more bottles of beer"
puts "Go to the store and buy some more, ninety-nine bottles of beer on the wall!"
