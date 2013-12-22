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
  case
  when n < secret
    puts "Too low"
  when n > secret
    puts "Too high"
  else
    puts "Bravo"
    found = true
  end
end
