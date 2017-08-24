class Board
  def initialize(pos=Position.new())
    @position = pos
  end

  def up
    @position.move(-1, 0)
    #print "DEBUG: Up ", @position.get, "\n"
  end

  def down
    @position.move(+1, 0)
    #print "DEBUG: Down ", @position.get, "\n"
  end

  def left
    @position.move(0, -1)
    #print "DEBUG: Left ", @position.get, "\n"
  end

  def right
    @position.move(0, +1)
    #print "DEBUG: Right ", @position.get, "\n"
  end

  def get
    return @position.get
  end
end
