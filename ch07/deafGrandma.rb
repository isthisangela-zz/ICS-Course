while true
  n = gets.chomp
  if n != n.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    if n != "BYE"
      puts "NO, NOT SINCE " + (1930  + rand(21)).to_s + "!"
    else
      puts "SEE YOU SOON!"
      break
end
