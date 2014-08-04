class MultiplicationTable
  def initialize(vector)
    @vector = vector
  end

  def table
    @vector.map { |outer| @vector.map { |inner| outer * inner } }
  end
end
