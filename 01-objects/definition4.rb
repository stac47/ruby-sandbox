#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-02
#
# @author : Laurent Stacul
#
# Suppress the ability of an object to be instanciated

class A

  attr_reader :number

  def initialize(n)
    @number = n
  end

end

a1 = A.new 10
puts a1.number

class A
  private_class_method :new
end

begin
  A.new 20
rescue => ex
  puts "A is no more instanciable: #{ex.class}"
  # Because the class method :new is now private.
end
  

