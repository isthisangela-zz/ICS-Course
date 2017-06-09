def roman n
  r = ''
  if (n < 1 || n > 3000)
    return 'Out of range'
  else
    r = r + 'M'*(n/1000)
    r = r + 'D'*(n%1000/500)
    r = r + 'C'*(n%500/100)
    r = r + 'L'*(n%100/50)
    r = r + 'X'*(n%50/10)
    r = r + 'V'*(n%10/5)
    r = r + 'I'*(n%5)
  end
  r
end
