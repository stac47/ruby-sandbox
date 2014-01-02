#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-02
#
# @author : Laurent Stacul
#
# Playing with class variables and class instance variable.

class A

  @number = 0
  @@other = 10

  class << self
    attr_reader :number
    attr_reader :other
  end

  def other_instance
    @@other
  end

  def self.other_class
    @@other
  end

  def number_instance
    @number
  end

  def self.number_class
    @number
  end

end

a = A.new

puts a.number_instance # number is a class instance variable. A warning will be issued
                       # because the instance 'a' has not initialized this attribute.
puts A.number_class # We have access to the class instance variable from a class method.
puts A.number # We can create reader on the class instance A

# We have access to class variable
puts a.other_instance
puts A.other_class
puts A.other # a class variable is not defined at class instance level

