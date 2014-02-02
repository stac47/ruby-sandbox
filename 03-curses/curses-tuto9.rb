#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-02-01
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen

begin
  #win1 = Curses.stdscr.subwin(10, 20, 0, 0)
  win1 = Curses::Window.new(10, 20, 0, 0)
  win1.box("|", "-")
  win1.setpos(5, 2)
  win1.addstr("HELLO")
  win1.refresh
  #win2 = Curses.stdscr.subwin(10, 20, 0, 21)
  win2 = Curses::Window.new(10, 20, 0, 21)
  win2.box("|", "-")
  win2.refresh
  input = win1.getstr
  win2.setpos(5, 2)
  win2.addstr(input)
  win2.refresh
  sleep(3)
rescue => ex
  puts ex
  Curses.close_screen
end


