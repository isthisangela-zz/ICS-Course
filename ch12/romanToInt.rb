def roman_to_integer roman
  digit_vals = {}
  digit_vals['i'] = 1
  digit_vals['v'] = 5
  digit_vals['x'] = 10
  digit_vals['l'] = 50
  digit_vals['c'] = 100
  digit_vals['d'] = 500
  digit_vals['m'] = 1000

  total = 0
  prev = 0
  roman = roman.downcase
  index = roman.length - 1
  while index >= 0
    num = roman[index]
    index = index - 1
    val = digit_vals[num]
    if !val
      puts 'Invalid format'
      exit
    end
    if val < prev
      total = total - val
    else
      prev = val
      total = total + val
    end
  end
  total
end
