words = []
while true
  if gets.chomp == ""
    break
  else
    words.push gets.chomp
  end
  
puts words.sort
