require 'dlx/sparse_matrix'
require_relative 'sudoku'

class DancingLinks

  def self.solve(sudoku)
    matrix = Dlx::SparseMatrix.new
    constraints(sudoku).each { |constraint| matrix.add(constraint) }
    matrix.solve { |solution| return convert(solution) }
    nil
  end

  private

  def self.constraints(sudoku)
    return enum_for(:constraints, sudoku) unless block_given?

    (0...9).each do |row|
      (0...9).each do |column|

        # Cell constraint.
        cell_cons = ("0"*((row * 9) + column)) + "1"
        cell_cons << "0" * (81 - cell_cons.length)

        # Block number.
        sub_grid = (column / 3) + (3 * (row / 3))

        (0...9).each do |num_index|
          string = cell_cons.dup
          string << constraint(row,      num_index)
          string << constraint(column,   num_index)
          string << constraint(sub_grid, num_index)

          num = (num_index + 1).to_s

          # Add if number is given.
          if sudoku.rows[row][column] == num
            yield string
            next
          end

          # Row skip - row already contains n.
          next if sudoku.rows[row].include? num

          # Column skip - column already contains n.
          next if sudoku.columns[column].include? num

          # Block skip - sub_grid already contains n.
          next if sudoku.sub_grids[sub_grid].include? num

          yield string
        end
      end
    end
  end

  def self.constraint(type_index, num_index)
    "0"*9*type_index + "0"*num_index + "1" + "0" * (80 - 9*type_index - num_index)
  end

  def self.convert(rows)
    string = Array.new(81)

    rows.each do |row|
      chunks = row.scan(/.{81}/)
      cell   = chunks[0].index("1")
      row    = cell / 9
      column = cell % 9

      n = chunks[1].sub("0"*row*9, "").index("1") + 1
      string[cell] = n
    end
    Sudoku.new(string.join)
  end
end
