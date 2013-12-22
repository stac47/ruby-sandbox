#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
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
  case n <=> secret
  when -1
    puts "Too low"
  when 1
    puts "Too high"
  else
    puts "Bravo"
    found = true
  end
end
