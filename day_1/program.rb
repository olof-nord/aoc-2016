#!/usr/bin/env ruby
# Olof Nord
# Advent of Code 2016: Day 1
# https://adventofcode.com/2016/day/1

def execute(instructions)
  require './Game.rb'

  game = Game.new

  instructions.split(', ').each do |move|
    turn = move[0]
    distance = move[1..-1].to_i

    case game.direction
    when "North"
      game.up(turn, distance)
    when "South"
      game.down(turn, distance)
    when "East"
      game.right(turn, distance)
    when "West"
      game.left(turn, distance)
    end
  end

  game.count
end

require 'minitest/autorun'

class Day1 < Minitest::Test

  puts "AoC Day 1: No Time for a Taxicab"

  def test_instructions
    assert_equal 5, execute("R2, L3")
    assert_equal 2, execute("R2, R2, R2")
    assert_equal 12, execute("R5, L5, R5, R3")
  end

  print "Code is: ", execute(File.open('./inputs.txt').read), "\n"

end
