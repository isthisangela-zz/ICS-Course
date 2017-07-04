puts "Enter birth year:"
year = gets.chomp.to_i

puts "Enter birthdate (mm/dd):"
birthdate = gets.chomp
month = birthdate[0..1].to_i
day = birthdate[3..4].to_i

puts "Enter time of birth in 24h format (xx:xx):"
time = gets.chomp
hour = time[0..1].to_i
minute = time[3..4].to_i

birth = Time.local(year, month, day, hour, minute)
billion = birth + 1000000000

puts "You will be a billion seconds old at the following time:"
puts billion.to_s[0..-7] # remove time zone
