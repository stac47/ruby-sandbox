#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-27
#
# @author : Laurent Stacul
#
# Testing Mixins and how Ruby handles collides.

module Cat

  def talk
    puts "Miaouuu #{self.name} !"
  end

end

module Gentleman

  def talk
    puts "Good morning, sir. I am #{self.name}."
  end

end

class Person

  # The fist declaration seems to be the one chosen by Ruby
  include Cat, Gentleman

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

p = Person.new("Guido")
p.talk
puts "I am a Cat" if p.is_a? Cat
puts "I am a Gentleman" if p.is_a? Gentleman

