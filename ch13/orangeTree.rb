class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @orangeCount = 0
    @dead = false
    @pick = false
  end
  def height
    if !@dead
      @height
    else
      "Tree is dead"
    end
  end
  def age
    if !@dead
      @age
    else
      "Tree is dead"
    end
  end
  def orangeCount
    if !@dead
      @orangeCount
    else
      "Tree is dead"
    end
  end
  def oneYearPasses
    if @dead
      "Tree is dead"
    else
      @height = @height + 2
      @age = @age + 1
      if @age >= 100
        die
      else
        if @age >= 10
          @orangeCount = age + rand(10).to_i
          @pick = true
        end
      end
      "One year passes"
    end
  end
  def pickOrange
    if @pick
      @orangeCount = @orangeCount - 1
      return "You have picked an orange!"
    elsif @dead
      return "Tree is dead"
    else
      return "No more oranges..."
    end
  end
  def die
    @orangeCount = 0
    @dead = true
    @pick = false
