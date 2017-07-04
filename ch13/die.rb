class Die
  
  def initialize
    roll
  end
  
  def roll
    @number_showing = 1 + rand(6)
  end
  
  def showing
    @number_showing
  end
  
  def cheat x
    while x < 1
      x = x + 6
    end
    while x > 6
      x = x - 6
    end
    @number_showing = x
  end
  
end
