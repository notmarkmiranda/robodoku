require "minitest"
require "./lib/board"
require "minitest/pride"
require "minitest/autorun"

class BoardTest < Minitest::Test
  def setup
    @b = Board.new
  end

  def test_creates_a_new_board
    expected = [[*"a1".."a9"], [*"b1".."b9"], [*"c1".."c9"], [*"d1".."d9"],
    [*"e1".."e9"], [*"f1".."f9"], [*"g1".."g9"], [*"h1".."h9"], [*"i1".."i9"]]
    assert_equal expected.flatten, @b.board
  end
end
