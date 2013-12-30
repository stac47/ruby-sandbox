#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-29
#
# @author : Laurent Stacul
#
# Using modules as a namespace.

module MyLib
  # Empty module
end

puts "MyLib is still empty" if MyLib.constants.size == 0

module MyLib
  module FirstPackage

    CONSTANT = Math::PI

    def FirstPackage.function
      puts "Function called: #{self.inspect}"
    end

  end
end

MyLib.constants.each {|c| puts "-#{c}"}

module MyLib
  module FirstPackage

    def FirstPackage.function2
      puts "function2 called: #{self.inspect}"
    end
  
  end
end

MyLib::FirstPackage.constants.each {|c| puts "-#{c}"}

puts MyLib::FirstPackage::CONSTANT
MyLib::FirstPackage.function
MyLib::FirstPackage.function2

