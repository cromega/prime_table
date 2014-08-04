Dir['lib/**/*.rb'].each { |lib| require_relative lib }

primes = PrimeGenerator::Sieve.new.first(10)

table = MultiplicationTable.new(primes).table

TableBuilder.new(STDOUT, header: primes, leader: primes).table do |builder|
  table.each { |row| builder.row(row) }
end
