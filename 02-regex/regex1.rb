#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2013-12-30
#
# @author : Laurent Stacul
#
# Basic tests of regular expressions in Ruby.

require 'minitest/autorun'

class TestRegexp < Minitest::Unit::TestCase

  def test_starts_with
    s1 = "Hello World"
    assert s1 =~ /^H/
    assert s1 !=~ /^h/
    assert s1 =~ /^h/i
    assert s1 =~ /^hello/i
    assert s1 =~ /^[Hh]/
    assert s1 =~ /^(H|h)/
  end

  def test_matching_words
    s = "Hello World"
    assert s =~ /^Hello World$/
    assert s =~ /Hello World/
    assert s =~ /hello world/i
    assert s =~ /^\w{5}\s\w{5}$/
    assert s =~ /\w{5}\s\w{5}/
    assert s =~ /\w+\s\w+/
    assert s =~ /\w+\s?\w+/
    assert s =~ /\w+ \w+/
  end

  def test_object_style
    p1 = Regexp.new('\w+\s\w+', Regexp::IGNORECASE)
    p2 = Regexp.new("\\w+\s\\w+", Regexp::IGNORECASE)
    s = "Hello World"
    assert s =~ p1
    m = Regexp.last_match
    assert_instance_of MatchData, m
    assert s =~ p2
  end

  def test_with_groups
    cc = "4012-9999-9999-9999/123"
    p = /(\d{4}-\d{4}-\d{4}-\d{4})\/(\d{3})/
    assert cc =~ p
    m = Regexp.last_match
    assert_equal "123", m[2]
  end

  def test_with_groups_and_loop
    cc = "4012-9999-9999-9999/123"
    assert cc =~ /([0-9\-]*)\/(\d+)/
    data = Regexp.last_match
    cc.split("/").each_with_index do |s, i|
      assert_equal s, data[i+1]
    end
  end

  def test_with_named_groups
    cc = "4012-9999-9999-9999/123"
    assert cc =~ /(?<number>[0-9\-]*)\/(?<cvv>\d+)/
    data = Regexp.last_match
    assert_equal "123", data[:cvv]
  end

end

