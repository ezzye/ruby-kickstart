# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars? ary
  sum_char = ary.map {|s| s.length}.inject(0) {|m,x| x+m}
  is_prime? sum_char
end

def is_prime? number, increment=3
  return false if number == 1
  return true if number == 2
  return false if number.even?
  return true if number == increment
  return false if number % increment == 0
  is_prime? number, increment+2
end

# p prime_chars? ['ab', 'c']