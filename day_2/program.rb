#!/usr/bin/ruby -w
# Olof Nord
# Advent of Code 2016: Day 2
# https://adventofcode.com/2016/day/2

if ARGV.empty?
  $part = 1
else
  $part = ARGV[0].to_i
end

require "./Position.rb"
$results = ""
$pos = Position.new

File.foreach('./inputs.txt') do |line|
  line.each_char do |char|
    case char
    when "U"
      $pos.up
    when "D"
      $pos.down
    when "R"
      $pos.right
    when "L"
      $pos.left
    else
      $results.concat($pos.to_s)
    end
  end
end

puts "AoC Day 2: Bathroom Security"
print "Part ", $part, " chosen \n"
print "Code is: ", $results, "\n"
