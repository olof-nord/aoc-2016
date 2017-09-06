class Game
  attr_accessor :directions, :direction

  def initialize()
    @directions = {
      "North" => 0,
      "East" => 0,
      "South" => 0,
      "West" => 0
    }

    @direction = "North"
  end

  def up(turn, distance)
    if turn == "R"
      self.direction = "East"
      self.directions["East"] += distance
    else
      self.direction = "West"
      self.directions["West"] += distance
    end
  end

  def down(turn, distance)
    if turn == "R"
      self.direction = "West"
      self.directions["West"] += distance
    else
      self.direction = "East"
      self.directions["East"] += distance
    end
  end

  def left(turn, distance)
    if turn == "R"
      self.direction = "North"
      self.directions["North"] += distance
    else
      self.direction = "South"
      self.directions["South"] += distance
    end
  end

  def right(turn, distance)
    if turn == "R"
      self.direction = "South"
      self.directions["South"] += distance
    else
      self.direction = "North"
      self.directions["North"] += distance
    end
  end

  def count
    x = (self.directions["North"] - self.directions["South"]).abs
    y = (self.directions["East"] - self.directions["West"]).abs
    x + y
  end
end
