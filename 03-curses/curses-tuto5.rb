#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-29
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen
begin
  win = Curses.stdscr
  x = win.maxx / 2  # We will center our text
  y = win.maxy / 2
  win.setpos(y, x)  # Move the cursor to the center of the screen
  win.addstr("Hello World")  # Display the text
  win.refresh  # Refresh the screen
  win.getch  # Waiting for a pressed key to exit
ensure
  Curses.close_screen
end
