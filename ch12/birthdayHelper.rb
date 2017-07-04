def getbday txtfile
  birth_dates = {}
  txtfile.each_line.chomp do |line|
    comma = line.index(",")
    name = line[0..(comma-1)]
    date = line[-12..-7]
    birth_dates[name] = date
  end
  birth_dates
end

months = {}
months[

puts "Input filename ending in .txt:"
input = gets.chomp
if input[-4..-1] != ".txt"
  puts "Not a .txt file!"
  exit
end
text = File.read input
puts "Enter a name:"
name = gets.chomp
date = (getbday text)[name]
puts name + "'s birthday will be on " + date + "."
