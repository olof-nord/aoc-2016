#!/usr/bin/ruby -w
# Olof Nord
# Advent of Code 2016: Day 2
# https://adventofcode.com/2016/day/2

require "./Position.rb"
require "./Board.rb"

game = Board.new(Position.new())

puts "AoC Day 2: Bathroom Security"
print "Starting position: ", game.get,"\n"

# ULL
game.up
game.left
game.left
print "First position: ", game.get,"\n"

# RRDDD
game.right
game.right
game.down
game.down
game.down
print "Second position: ", game.get,"\n"

# LURDL
game.left
game.up
game.right
game.down
game.left
print "Third position: ", game.get,"\n"

# UUUUD
game.up
game.up
game.up
game.up
game.down
print "Fourth position: ", game.get,"\n"
