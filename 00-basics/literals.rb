#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-21
#
# @author : Laurent Stacul

# String
text = "This is a long text on several lines\n" \
"just to try ruby. This is quite easy.\n"
text += %Q{Can be delimited by other characters thanks to %Q or %q}
puts text

s = 'Hello'

# Array
a = [1, 2, 3]
b = %W{a b c}
print a + b
puts

# Hashes
d = {:key1 => a, :key2 => b, :key3 => s}
puts d[:key1][0]
puts d[:"key3"]

# Range
r = 1..10
puts r.include? 5
puts r.include? 10
puts r.include? 11

rr = 'a'...'z'
puts rr.include? 'z'
