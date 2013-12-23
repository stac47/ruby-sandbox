#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-23
#
# @author : Laurent Stacul
#
# Simply display the arguements passed to the program.
#
# $ ruby 00-basics/arguments.rb test test test 2>~/err.log
#
# The arguments are displayed on standard and error output channel. The
# previous command will redirect the error output to a file and display the
# standard output.

ARGV.each do |a| 
  STDERR.puts a
  STDOUT.puts a
end
