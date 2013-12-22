#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-22
#
# @author : Laurent Stacul

# Use '_' if the value is not used in the loop
for _ in 1..3
  puts "Hello"
end

puts "-"*30

(1..3).each {puts "Hello"}
