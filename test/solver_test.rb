require "minitest"
require "./lib/solver"
require "minitest/pride"
require "minitest/autorun"

class SolverTest < Minitest::Test
  def setup
    puzzle_text = " 26594317\n715638942\n394721865\n163459278\n948267153\n257813694\n531942786\n482176539\n679385421"
    @solver = Solver.new(puzzle_text)
  end

  def test_it_can_parse_puzzle_text
    expected = [" 26594317", "715638942", "394721865", "163459278", "948267153", "257813694", "531942786", "482176539", "679385421"]
    assert_equal expected, @solver.board
  end

  def test_it_can_create_puzzle_hash
    expected = {"a1": " ", "a2": "2", "a3": "6", "a4": "5", "a5": "9", "a6": "4", "a7": "3", "a8": "1", "a9": "7" }
    #  ["b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "b9"],
    #  ["c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9"],
    #  ["d1", "d2", "d3", "d4", "d5", "d6", "d7", "d8", "d9"],
    #  ["e1", "e2", "e3", "e4", "e5", "e6", "e7", "e8", "e9"],
    #  ["f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9"],
    #  ["g1", "g2", "g3", "g4", "g5", "g6", "g7", "g8", "g9"],
    #  ["h1", "h2", "h3", "h4", "h5", "h6", "h7", "h8", "h9"],
    #  ["i1", "i2", "i3", "i4", "i5", "i6", "i7", "i8", "i9"}
    require 'pry'; binding.pry
    assert_equal expected, @solver.hashed
  end

end
