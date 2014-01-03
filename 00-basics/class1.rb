#!/usr/bin/ruby -w
# vi:set fileencoding=utf-8 :
#
# Created on 2014-01-03
#
# @author : Laurent Stacul
#
# What are really classes definition ?

require 'minitest/autorun'

class A;end

module M;end

class TestClass < Minitest::Unit::TestCase

  def setup
    @a = A.new
  end

  def test_class_type
    assert A.is_a? Class
    assert A.is_a? Object
    assert A.is_a? Module
    assert @a.is_a? Object
    assert not(@a.is_a? Class)
    assert not(@a.is_a? Module)
  end

  def test_eigenclass_type
    eigen = class << @a;self;end
    # Of course it is an object
    assert eigen.is_a? Object
    assert eigen.is_a? Module
    assert eigen.is_a? Class
  end

  def test_module_type
    assert M.is_a? Module
    assert M.is_a? Object
    assert not(M.is_a? Class)
  end
end


