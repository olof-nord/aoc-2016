class Position
  def initialize(x=1, y=1)
    @x = x
    @y = y
  end

  def move(x, y)
    if inrange(@x + x, @y + y)
      @x += x
      @y += y
    end
  end

  def get
    return @x, @y
  end

  def inrange(x, y)
    if ((0..2) === x && (0..2) === y)
      #print "DEBUG: inrange: true \n"
      return true
    else
      #print "DEBUG: inrange: false \n"
      return false
    end
  end

  private :inrange
end
