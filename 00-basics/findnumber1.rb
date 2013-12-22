#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# The classocal find a number game with the if then else structure.
#
# Created on 2013-12-21
#
# @author : Laurent Stacul

secret = 10
found = false

while not found
  print "Please enter a number: "
  input = gets
  n = Integer(input.chomp)
  if n <secret
    puts "Too low"
  elsif n > secret
    puts "Too high"
  else
    puts "Bravo"
    found = true
  end
end
