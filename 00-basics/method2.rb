#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-26
#
# @author : Laurent Stacul
#
# Testing the splat operator.

def hypothenus(x, y)
  return Math.sqrt(x**2 + y**2)
end

alias h hypothenus

msgTemplate = "Pythagora's theorem applied: %1$1.2f"

# Normal call
result = h(1, 3)
puts msgTemplate % result

# Splat operator for method invocation
vector = [1, 3]
result = h(*vector)
puts msgTemplate % result

# Splat operator with a higher number of arguments
vector << 5
begin
  result = h(*vector)
rescue => e
  puts "When the vector is in 3D, an #{e.class} is raised"
end

