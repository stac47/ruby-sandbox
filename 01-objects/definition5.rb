#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-03
#
# @author : Laurent Stacul
#
# Testing method lookup of methods

s1 = "Hello"
puts s1.upcase

def s1.upcase
  "Prout"
end

puts s1.upcase

class << s1
  def upcase
    "Super prout"
  end
end

puts s1.upcase
