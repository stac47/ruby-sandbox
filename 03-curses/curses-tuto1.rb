#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-25
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen
begin
  nb_lines = Curses.lines
  nb_cols = Curses.cols
ensure
  Curses.close_screen
end

puts "Number of rows: #{nb_lines}"
puts "Number of columns: #{nb_cols}"

