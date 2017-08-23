class Position
  def initialize(x=1, y=1)
    @x = x
    @y = y
  end

  def incrementX
    if inrange(@x + 1) then @x += 1 end
  end

  def decrementX
    if inrange(@x - 1) then @x -= 1 end
  end

  def incrementY
    if inrange(@y + 1) then @y += 1 end
  end

  def decrementY
    if inrange(@y - 1) then @y -= 1 end
  end

  def get
    return @x, @y
  end

  def inrange(val)
    if ((0..2) === val)
      #print "DEBUG: inrange: true \n"
      return true
    else
      #print "DEBUG: inrange: false \n"
      return false
    end
    #return val <= 0 && val >= 2 ? false : true
    #return (0..2) === val ? true : false
  end

  private :inrange
end
