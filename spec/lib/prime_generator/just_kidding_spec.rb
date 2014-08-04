require_relative '../../shared/prime_generator'
require_relative '../../../lib/prime_generator/just_kidding'

module PrimeGenerator
  describe JustKidding do
    it_behaves_like 'a prime generator'
  end
end
