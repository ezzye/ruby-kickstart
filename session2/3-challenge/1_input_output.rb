# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  input = gets.chomp
  ary = input.split(" ")
  x = ary[0].to_i
  y = ary[1].to_i
  # p ARGV
  # p ary
  # x = ary[0].to_i
  # y = ary[1].to_i
  print "#{x + y}\n#{x - y}\n#{x * y}\n"
  # puts x + y
  # puts x - y
  # puts x * y
end

# unless ARGV.first
#   puts "WTF"
#   exit(1)
# end
# input = gets.chomp
# ary = input.split(' ')

# sum_difference_product