#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-02
#
# @author : Laurent Stacul
#
# Testing self keyword.

class A

  # self = A
  puts "From start #{self}"

  class << self
    # self = a class instance
    # #<Class:A>
    puts "From Eigenclass #{self}"
  end

  def initialize
    # self = an instance of object A
    puts "From initialize #{self}"
  end
end

A.new
