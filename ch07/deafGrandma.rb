while gets.chomp != "BYE"
  n = gets.chomp
  if n != n.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE " + (1930  + rand(21)).to_s + "!"
end
