require_relative '../../lib/multiplication_table'

describe MultiplicationTable do
  describe '#table' do
    subject { described_class.new([2, 4, 6]) }

    it 'returns a multiplication based on the input array' do
      expect(subject.table).to eq [[4, 8, 12], [8, 16, 24], [12, 24, 36]]
    end
  end
end
