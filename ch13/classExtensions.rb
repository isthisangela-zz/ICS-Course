class Array
  
  def shuffle
    recursive_shuffle self, [] 
  end 

  def recursive_shuffle unshuffled_array, shuffled_array
    if unshuffled_array.length == 0
      return shuffled_array
    else
      ind = rand(unshuffled_array.length)
      next = unshuffled_array[ind]
      unshuffled_array.delete_at(ind)
      shuffled_array.push(next)
      return recursive_shuffle unshuffled_array, shuffled_array
    end
  end
  
end

class Integer
  
  def factorial
    if self <= 1
      return 1
    else
      return self * (self-1).factorial
  end
    
  def toRoman
    if 1 <= self && self <= 3000
      r = ''
      m = self/1000
      d = self%1000/500
      c = self%500/100
      l = self%100/50
      x = self%50/10
      v = self%10/5
      i = self%5
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
      return r
    else
      return "out of range"
    end
  end
    
end
