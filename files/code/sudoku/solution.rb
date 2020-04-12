module Solution

  private

  def solution?(candidate)
    valid?(:rows,      candidate) &&
    valid?(:columns,   candidate) &&
    valid?(:sub_grids, candidate)
  end

  def valid?(type, candidate)
    candidate.send(type).all? { |a| a.chars.sort == ("1".."9").to_a }
  end
end
