def roman n
  r = ''
  m = n/1000
  d = n%1000/500
  c = n%500/100
  l = n%100/50
  x = n%50/10
  v = n%10/5
  i = n%5
  
  r = r + m*'M'
  
  if d == 1
    if c == 4
      r = r + 'CM'
    else
      r = r + 'D' + c*'C'
    end
  else
    if c == 4
      r = r + 'CD'
    else
      r = r + c*'C'
    end
  end
  
  if l == 1
    if x == 4
      r = r + 'XC'
    else
      r = r + 'L' + x*'X'
    end
  else
    if x == 4
      r = r + 'XL'
    else
      r = r + x*'X'
    end
  end
  
  if v == 1
    if i == 4
      r = r + 'IX'
    else
      r = r + 'V' + i*'I'
    end
  else
    if i == 4
      r = r + 'IV'
    else
      r = r + i*'I'
    end
  end  
    
  r
    
end
