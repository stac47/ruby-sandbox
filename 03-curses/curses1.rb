#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-08
#
# @author : Laurent Stacul
#
# Testing the ruby curse binding.

require 'curses'
include Curses

def display_message(message)
  width = message.length + 6
  win = Curses::Window.new(5, width,
                           (Curses.lines - 5) / 2,
                           (Curses.cols - width) / 2)
  win.box("|", "-")
  win.setpos(2, 3)
  win.addstr(message)
  win.refresh
  win.getch
  win.close
end

Curses.init_screen

begin
  Curses.crmode
  Curses.setpos((lines - 5) / 2, (cols - 10) / 2)
  Curses.addstr("Press a key")
  Curses.refresh
  Curses.getch
  display_message("Hello World !")
  Curses.refresh
rescue
  Curses.close_screen
end


