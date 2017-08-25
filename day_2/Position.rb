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

  def to_s
    translations = {
      [0,0] => "1", [0,1] => "2", [0,2] => "3",
      [1,0] => "4", [1,1] => "5", [1,2] => "6",
      [2,0] => "7", [2,1] => "8", [2,2] => "9"
    }
    translations[self.coordinates]
  end

  def move(x, y)
    if inrange(self.coordinates[0] + x, self.coordinates[1] + y)
      self.coordinates[0] += x
      self.coordinates[1] += y
    end
  end

  def inrange(x, y)
    if ((0..2) === x && (0..2) === y)
      return true
    else
      return false
    end
  end

  private :inrange, :move
end
