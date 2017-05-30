byecount = 0
while true
  n = gets.chomp
  if n != n.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    byecount = 0
  else
    if n != "BYE"
      puts "NO, NOT SINCE " + (1930  + rand(21)).to_s + "!"
      byecount = 0
    else
      byecount = byecount + 1
      if byecount < 3
        puts "WHAT?!"
      else
        puts "SEE YOU LATER!"
        break
end
