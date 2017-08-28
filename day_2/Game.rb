class Game
  attr_reader :valid_positions, :part
  attr_accessor :coordinates

  def initialize(part)
    if part == 1
      @coordinates = [1, 1]

      @valid_positions = {
        [0,0] => "1", [0,1] => "2", [0,2] => "3",
        [1,0] => "4", [1,1] => "5", [1,2] => "6",
        [2,0] => "7", [2,1] => "8", [2,2] => "9"
      }
    elsif part == 2
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
    self.valid_positions[self.coordinates]
  end

  def move(x, y)
    next_position = [self.coordinates[0] + x, self.coordinates[1] + y]
    if self.valid_positions.include? next_position
      self.coordinates = next_position
    end
  end

  private :move
end
