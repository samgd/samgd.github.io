# begin-snippet: snippet
class Sudoku

  def initialize(string)
    @string = string
  end

  def rows
    @rows ||= @string.scan(/.{9}/)
  end

  def columns
    @columns ||= rows.map(&:chars).transpose.map(&:join)
  end

  def sub_grids
    return @sub_grids if @sub_grids

    grid_builder = Hash.new { |h, k| h[k] = Array.new }

    (0...9).each do |i|
      (0...9).each do |j|
        # 3x3 blocks, numbered 0 to 8, run left to right, top down.
        block = (j / 3) + (3 * (i / 3))
        grid_builder[block] << rows[i].chars[j]
      end
    end

    @sub_grids = grid_builder.values.map(&:join)
  end

  def to_s
    @string
  end

  def [](n)
    @string[n]
  end

  def []=(n, v)
    @string[n] = v
    @rows = @columns = @sub_grids = nil
  end

  def solve(algorithm)
    algorithm.solve(self)
  end
end
# end-snippet
