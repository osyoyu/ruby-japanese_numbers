require "minitest/autorun"
require "japanese_numbers"

class TestJapaneseNumbers < MiniTest::Test
  def test_valid_plain
    assert_equal JapaneseNumbers::Parser.parse("42"), 42
  end

  def test_valid_with_units
    assert_equal JapaneseNumbers::Parser.parse("5000兆"), 5000000000000000
  end
end
