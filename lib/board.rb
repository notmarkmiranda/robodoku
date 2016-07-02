class Board
  attr_reader :gb

  def initialize
    @gb = [*"a".."i"].map { |let| [*"1".."9"].map { |num| let + num }}
  end
end
