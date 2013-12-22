#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-22
#
# @author : Laurent Stacul

def random_iter(n)
  while true do
    yield rand(n)
  end
end

random_iter 10 do |i|
  puts i
  break if i == 5
end
