require 'test/unit'
require_relative '../14_in_array'

class InArrayTest < Test::Unit::TestCase
  def test_in_array
    assert_equal(true, in_array("hello", ["hi", "howdy", "hello"]))
    assert_equal(false, in_array("drake", ["jayz", "kanye", "yachty"]))
  end
end
