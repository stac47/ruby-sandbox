#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-22
#
# @author : Laurent Stacul

def factorial(limit = 10)
  f = 1
  for i in 1..limit
    f*=i
    yield f
  end
end

factorial(5) {|n| puts n}
factorial {|n| puts n if n%30 == 0}
