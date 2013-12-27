#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-27
#
# @author : Laurent Stacul
#
# Testing inheritance, method overriding and access modifiers.

class A

  def self.display_class
    puts "Displaying class name: #{self.object_id}"
  end

  def public_method
    protected_method
  end

  protected

  def protected_method
    private_method
  end

  private

  def private_method
    puts "Hello from #{self.class}"
  end

end

class B < A

  def another_public_method
    # We, of course, have access to the protected methods
    protected_method
  end

end

class C < A

  private

  def private_method
    # we cannot invoke super.private_method but we can override it.
    puts "Overrided private method in #{self.class}"
  end

end


a = A.new
a.public_method

# Protected methods tests
b = B.new
b.another_public_method

# Private methods overriding test
c = C.new
c.public_method

# Class method inheritance
A.display_class
B.display_class
C.display_class
