#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-26
#
# @author : Laurent Stacul
#
# Testing method definition syntax.

def fibo(n=0)
  raise "Bad argument: it should be greater than 0" if n < 0
  return 1 if n == 0
  return 2 if n == 1
  fibo(n-1) + fibo(n-2)
end

alias fibonacci fibo

puts "fibonacci(0) = #{fibo}"
puts "fibonacci(1) = #{fibo 1}"
puts "fibonacci(2) = #{fibo 2}"
puts "fibonacci(5) = #{fibonacci 5}"

begin
  fibo(-1)
rescue => e
  puts "ERROR:"
  puts e.backtrace.join("\n")
end
