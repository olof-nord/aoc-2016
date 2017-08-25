class Position
  attr_reader :coordinates

  def initialize(x=1, y=1)
    @coordinates = [x, y]
  end

  def up
    move(-1, 0)
  end

  def down
    move(1, 0)
  end

  def left
    move(0, -1)
  end

  def right
    move(0, 1)
  end

  def move(x, y)
    if inrange(self.coordinates[0] + x, self.coordinates[1] + y)
      self.coordinates[0] += x
      self.coordinates[1] += y
    end
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
