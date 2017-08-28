#!/usr/bin/env ruby
# Olof Nord
# Advent of Code 2016: Day 2
# https://adventofcode.com/2016/day/2

part = 1

if !ARGV.empty?
  part = ARGV[0].to_i
end

require "./Game.rb"
results = ""
game = Game.new(part)

File.foreach('./inputs.txt') do |line|
  line.each_char do |char|
    case char
    when "U"
      game.up
    when "D"
      game.down
    when "R"
      game.right
    when "L"
      game.left
    else
      results.concat(game.to_s)
    end
  end
end

puts "AoC Day 2: Bathroom Security"
print "Part ", part, " chosen \n"
print "Code is: ", results, "\n"
