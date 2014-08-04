require 'openssl'
require 'openssl/bn'

module PrimeGenerator
  class OpenSSL
    def first(count)
      primes = []
      test = 2

      while primes.count < count
        primes << test if ::OpenSSL::BN.new(test).prime?
        test += 1
      end

      primes
    end
  end
end
