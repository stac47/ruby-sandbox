#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-26
#
# @author : Laurent Stacul

# Defining a custom exception
class StacError < StandardError; end

# A function which will raise errors.
def f n
  puts "Before critical section"
  case n
  when 0
    raise "Error test"
  when 1
    raise StacError, "My error", caller
  else
    puts "Normal run"
  end
  puts "After critical section"
end

def g
  raise "Good Bye"
end

(0..2).each do |n|
  begin
    puts "---> Execution: #{n}"
    f(n)
  rescue RuntimeError => ex
    puts "Solving #{ex.class}"
  rescue StacError, StandardError => ex
    puts "Solving also #{ex.class}"
  rescue => ex
    puts "Last chance to solve the issue #{ex.class}"
  else
    puts "It worked"
  ensure
    puts "This is always run"
  end
end

# Raising an exception to see the stacktrace
g
