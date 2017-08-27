class Position
  attr_reader :coordinates

  def initialize(x=1, y=1)
    if $part == 1
      @coordinates = [x, y]

      @valid_positions = {
        [0,0] => "1", [0,1] => "2", [0,2] => "3",
        [1,0] => "4", [1,1] => "5", [1,2] => "6",
        [2,0] => "7", [2,1] => "8", [2,2] => "9"
      }
    elsif $part == 2
      @coordinates = [2, 0]

      @valid_positions = {
        [0,2] => "1",
        [1,1] => "2", [1,2] => "3", [1,3] => "4",
        [2,0] => "5", [2,1] => "6", [2,2] => "7", [2,3] => "8", [2,4] => "9",
        [3,1] => "A", [3,2] => "B", [3,3] => "C",
        [4,2] => "D"
      }
    end
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
    @valid_positions[self.coordinates]
  end

  def move(x, y)
    if $part == 1
      if inrange(self.coordinates[0] + x, self.coordinates[1] + y)
        self.coordinates[0] += x
        self.coordinates[1] += y
      end
    elsif $part == 2
      if available(self.coordinates[0] + x, self.coordinates[1] + y)
        self.coordinates[0] += x
        self.coordinates[1] += y
      end
    end
  end

  def inrange(x, y)
    if ((0..2) === x && (0..2) === y)
      return true
    else
      return false
    end
  end

  def available(x, y)
    return @valid_positions.include? [x, y]
  end

  private :inrange, :move, :available
end
