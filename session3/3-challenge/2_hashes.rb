# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase n
  return {1 => []}                                  if n == 1
  return {1 => []}                                  if n == 2
  hash  = staircase(n-2)
  result = []
  (1..(n-1)).each { |x| x.even? ? result << x : ""}
  item = n.odd? ? n : n-1
  hash[item] = result
  hash
end

# (1..10).each { |b| p staircase b}


