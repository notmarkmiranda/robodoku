require "./lib/board"

class Solver
  attr_reader :board, :generic_board

  def initialize(puzzle_text)
    @generic_board = Board.new
    @board = parse(puzzle_text)
  end

  def parse(puzzle_text)
    puzzle_text.split("\n")
  end

  def hashed
    require 'pry'; binding.pry
  end
end
