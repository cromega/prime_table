shared_examples "a prime generator" do
  describe '#first' do
    it 'generates primes' do
      expect(subject.first(10)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end
end
