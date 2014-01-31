#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-28
#
# @author : Laurent Stacul

require 'curses'

Curses.init_screen

win = Curses::Window.new(Curses.lines, Curses.cols, 0, 0)
win.box("|", "-", "o")
win.setpos(1, 1)
win << "Hello"
win.refresh
win.getch
win.close

