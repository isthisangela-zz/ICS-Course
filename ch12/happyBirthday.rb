puts "What year were you born in? (yyyy)"
year = gets.chomp.to_i
puts "What month were you born in? (mm)"
month = gets.chomp.to_i
puts "What day of the month were you born on? (dd)"
day = gets.chomp.to_i

age_secs = Time.new - Time.local(year, month, day)
age_yrs = age_secs/31536000 # seconds in a year
while age_yrs > 0
  puts "SPANK!"
  age_yrs = age_yrs - 1
end
