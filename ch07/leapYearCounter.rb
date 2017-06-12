puts "Enter start year:"
startyr = gets.to_i
puts "Enter end year:"
endyr = gets.to_i

year = startyr
puts "Leap years in between:"
while year <= endyr
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        puts year.to_s
      end
    else
      puts year.to_s
    end
  end
  year = year + 1
end
