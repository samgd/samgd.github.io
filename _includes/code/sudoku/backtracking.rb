require_relative 'solution'
require_relative 'sudoku'

class Backtracking

  extend Solution

  def self.solve(sudoku)
    # New copy to avoid changing original sudoku.
    temp = Sudoku.new(sudoku.to_s.dup)
    search(0, temp)
  end

  private

  def self.search(n, sudoku)
    return nil if n > 80
    return sudoku if solution?(sudoku)

    # Given cell.
    if sudoku[n] != "."
      return search(n + 1, sudoku)
    end

    # Unknown cell.
    values(n, sudoku).each do |value|
      sudoku[n] = value
      solution = search(n + 1, sudoku)
      return solution if solution
    end

    # Every possible value explored, reset cell, report no solution.
    sudoku[n] = "."
    nil
  end

  def self.values(n, sudoku)
    row, column = n / 9, n % 9
    sub_grid = (column / 3) + (3 * (row / 3))

    ('1'..'9').to_a - sudoku.rows[row].chars \
                    - sudoku.columns[column].chars \
                    - sudoku.sub_grids[sub_grid].chars
  end
end
