class Board
  def initialize(pos=Position.new())
    @position = pos
  end

  # (-1, 0)
  def up
    @position.decrementX
    #print "DEBUG: Up ", @position.get, "\n"
  end

  # (+1, 0)
  def down
    @position.incrementX
    #print "DEBUG: Down ", @position.get, "\n"
  end

  # (0, -1)
  def left
    @position.decrementY
    #print "DEBUG: Left ", @position.get, "\n"
  end

  # (0, +1)
  def right
    @position.incrementY
    #print "DEBUG: Right ", @position.get, "\n"
  end

  def get
    return @position.get
  end
end
