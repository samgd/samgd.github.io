require_relative 'solution'
require_relative 'sudoku'

class BruteForce

  extend Solution

  def self.solve(sudoku)
    candidates(sudoku).find { |candidate| solution? candidate }
  end

  private

  def self.candidates(sudoku)
    return enum_for(:candidates, sudoku) unless block_given?

    ("1"*81.."9"*81).each do |candidate|
      next if candidate.include?("0")
      next unless matching_givens?(candidate, sudoku)
      yield Sudoku.new(candidate)
    end
  end

  def self.matching_givens?(candidate, sudoku)
    # Convert sudoku to regex & match. Works as unknowns are represented by "."
    Regexp.new(sudoku.to_s).match(candidate.to_s)
  end
end
