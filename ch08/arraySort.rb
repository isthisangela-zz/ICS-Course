words = []
while true
  if gets.chomp == ""
    break
  else
    words.push gets.chomp
  end
end
  
puts words.sort
