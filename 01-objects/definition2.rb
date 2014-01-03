#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-02
#
# @author : Laurent Stacul
#
# Testing self keyword.

# self = main
puts "From start: #{self.inspect}"

class A

  # self = A
  puts "From class A start definition: #{self}"

  class << self
    # self = a class instance
    # #<Class:A>
    puts "From Eigenclass: #{self}"
  end

  def initialize
    # self = an instance of object A
    puts "From initialize: #{self}"
  end
end

A.new
