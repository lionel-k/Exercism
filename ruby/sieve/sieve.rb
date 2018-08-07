# Use the Sieve of Eratosthenes to find all the primes from 2 up to a given number.
class Sieve
  def initialize(limit)
    @limit = limit
    @all = 2.upto(limit).inject({}) {|result, value| result.merge(value => nil)}
    # print @all
  end

  def primes
    result = []
    @all.each do |value, mark|
      next if mark == "marked"
      # puts @all
      # puts value
      mark_multiples_of(value)
      result << value
      # puts value
    end
    # print result
    result
  end

  def mark_multiples_of(prime)
    (prime + 1).upto(@limit) do |n|
      @all[n] = "marked" if (n % prime).zero?
    end
  end
end

module BookKeeping
  VERSION = 1
end


# Sieve.new(1).primes
# expected = []
# Sieve.new(2).primes
# expected = [2]
Sieve.new(10).primes
# expected = [2, 3, 5, 7]

# def signer_keys_and_uids
#   signers.inject({}) do |result, signer|
#     result.merge(signer.key_id => signer.uids)
#   end
# end
