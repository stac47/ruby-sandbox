#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-26
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen
Curses.start_color
puts Curses.can_change_color?
Curses.curs_set(0)
Curses.init_pair(1, Curses::COLOR_RED, Curses::COLOR_BLACK)
#Curses.attrset(Curses.color_pair(1) | Curses::A_BLINK)
#Curses.attrset(Curses::A_BLINK)
Curses.attrset(Curses::A_REVERSE)
Curses.addstr("Hello World")
Curses.getch
Curses.close_screen

