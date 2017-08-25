#!/usr/bin/ruby -w
# Olof Nord
# Advent of Code 2016: Day 2
# https://adventofcode.com/2016/day/2

require "./Position.rb"

pos = Position.new()

puts "AoC Day 2: Bathroom Security"
print "Starting position: ", pos.coordinates,"\n"

# ULL
pos.up
pos.left
pos.left
print "First position: ", pos.coordinates,"\n"

# RRDDD
pos.right
pos.right
pos.down
pos.down
pos.down
print "Second position: ", pos.coordinates,"\n"

# LURDL
pos.left
pos.up
pos.right
pos.down
pos.left
print "Third position: ", pos.coordinates,"\n"

# UUUUD
pos.up
pos.up
pos.up
pos.up
pos.down
print "Fourth position: ", pos.coordinates,"\n"
