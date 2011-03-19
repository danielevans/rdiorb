require File.dirname(__FILE__) + '/common'
require File.dirname(__FILE__) + '/../lib/rdio'
include Rdio

class TestSearch < Test::Unit::TestCase

  def test_camel2underscores
    assert_equal nil,camel2underscores(nil)
    assert_equal '',camel2underscores('')
    assert_equal 'a',camel2underscores('a')
    assert_equal 'a',camel2underscores('A')
    assert_equal 'ab',camel2underscores('Ab')
    assert_equal 'a_b',camel2underscores('AB')
    assert_equal 'abc',camel2underscores('Abc')
    assert_equal 'ab_c',camel2underscores('AbC')
    assert_equal 'a_b_c',camel2underscores('ABC')
    assert_equal 'a_b_cde',camel2underscores('ABCde')
  end

end