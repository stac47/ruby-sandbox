#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-03
#
# @author : Laurent Stacul
#
# Testing nested module definition.

# We have to define the A module before creating a nested one.
module A;end

module A::B
  def hello
    # Defined as an instance method so that is is includable.
    puts "Hello"
  end

  # Define hello as a module function.
  module_function :hello
end

# Classical call.
A::B.hello

# What happens when we try to create a class with the same name as the module.
begin
  class A;end
rescue => ex
  puts "Name collision with module A: #{ex.class}"
  puts "Backtrace:\n#{ex.backtrace.join("\n")}"
end

include A::B
# Invoking hello method without writing the namespace.
hello
