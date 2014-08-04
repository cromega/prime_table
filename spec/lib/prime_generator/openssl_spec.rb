require_relative '../../shared/prime_generator'
require_relative '../../../lib/prime_generator/openssl'

module PrimeGenerator
  describe OpenSSL do
    it_behaves_like 'a prime generator'
  end
end
