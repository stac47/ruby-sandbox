#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-26
#
# @author : Laurent Stacul
#
# Defining an object.

class Person

  attr_reader :firstname, :lastname, :age
  attr_writer :firstname

  @@counter = 0

  def Person.count
    "Number of Person: #{@@counter}"
  end

  def initialize(firstname, lastname, age)
    @firstname = firstname
    @lastname = lastname
    @age = age
    @@counter += 1
  end

  GOD = Person.new("Jésus", "Christ", 33)

  def ==(o)
    if o.is_a? Person
      @firstname == o.firstname && \
      @lastname == o.lastname && \
      @age == o.age
    else
      false
    end
  end

  def to_s
    "#@firstname #@lastname (#@age years old)"
  end

end

# At this point, only GOD is defined
puts Person.count
puts Person::GOD

# Defining a new Person
p = Person.new("John", "Doe", 33)
puts Person.count # Now two persons
puts p

# Testing equality
p.firstname = "Tom"
puts p
q = Person.new("Tom", "Doe", 33)
puts p == q
puts p == Person::GOD

puts Person.count

