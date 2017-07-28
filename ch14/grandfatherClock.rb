puts "Enter block:"
block = gets.chomp

hours = Time.new.hour
if Time.new.hour > 12
  hours = hours - 12
  
while (hours > 0)
  puts block
  hours = hours - 1
end
