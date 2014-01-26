#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-25
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen
begin
  x = Curses.cols / 2                  # We will center our text
  y = Curses.lines / 2
  Curses.setpos(y, x)                  # Move the cursor to the center of the screen
                                       # Notice the inversion y and x !
  Curses.addstr("Hello World")         # Display the text
  Curses.refresh                       # Refresh the screen
  Curses.getch                         # Waiting for a pressed key to exit
ensure
  Curses.close_screen
end
