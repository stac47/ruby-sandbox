#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-21
#
# @author : Laurent Stacul

# Flip flox expression in if expression
a = (1..10).to_a
a.each {|n| puts n if n==5..n==8}

puts "-"*10

# Flips when i == 0 and flops as soon as i > 2
i=0
while i==0..i>2
  puts i
  i += 1
end
