def roman n
  r = ''
  if (n < 1 || n > 3000)
    return 'Out of range'
  else
    while n%1000 != n
      r = r + 'M'
      n = n - 1000
    end
    while n%500 != n
      r = r + 'D'
      n = n - 500
    end
    while n%100 != n
      r = r + 'C'
      n = n - 100
    end
    while n%50 != n
      r = r + 'L'
      n = n - 50
    end
    while n%10 != n
      r = r + 'X'
      n = n - 10
    end
    while n%5 != n
      r = r + 'V'
      n = n - 5
    end
    while n > 0
      r = r + 'I'
      n = n - 1
    end
  end
  r
end
