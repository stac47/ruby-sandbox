#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-26
#
# @author : Laurent Stacul
#
# Testing Proc objects.

def f(n, &b)
  if b.call(n)
    puts "Result of block was true"
  else
    puts "Result of block was false"
  end
end

def g(n, p)
  f(n, &p)
end

f(10) { |x| x > 5}
f("") { |s| s.length > 0}

p = Proc.new { |x| x % 2 == 0}
f(5, &p)
g(5, p)
