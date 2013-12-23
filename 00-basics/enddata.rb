#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-23
#
# @author : Laurent Stacul
#
# Simply display the data stored at the end of the script.

def display()
  # DATA is a file
  DATA.each { |l| puts l }
end

display

__END__
Here are some data stored at the end
of the file.
