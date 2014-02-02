#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-02-01
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen
Curses.noecho
begin
  win = Curses.stdscr
  win.keypad = true
  win.addstr("Hello")
  win.refresh
  input = win.getch
  if input == Curses::Key::LEFT then
    win.addstr("Left key")
  else
    win.addstr("Other key")
  end
  win.refresh
  sleep(2)
rescue => ex
  Curses.close_screen
  puts ex
  print ex.backtrace.join("\n")
end

