require_relative '../../lib/table_builder'
require 'stringio'

describe TableBuilder do
  let(:io) { StringIO.new }

  subject { described_class.new(io) }

  describe '#table' do
    context 'when a block is given' do
      it 'yields with the builder instance' do
        expect { |b| subject.table(&b) }.to yield_with_args(subject)
      end
    end
    
    context 'when no block is given' do
      it 'returns a builder instance' do
        expect(subject.table).to eq subject
      end
    end

    context 'when there is a header' do
      subject { described_class.new(io, header: [1, 2]) }

      it 'appends the header to the output' do
        subject.table { }
        expect(io.string).to eq "1\t2\n\n"
      end
    end
  end

  describe '#row' do
    it 'builds the formatted row from the data and appends it to the output' do
      subject.row([1, 2])

      expect(io.string).to eq "1\t2\n"
    end

    context 'when there is a leader column' do
      subject { described_class.new(io, leader: %w(a b)) }

      it 'prepends the actual leading item to the column' do
        subject.row([1, 2])
        subject.row([3, 4])

        expect(io.string).to eq "a\t1\t2\nb\t3\t4\n"
      end
    end
  end
end
