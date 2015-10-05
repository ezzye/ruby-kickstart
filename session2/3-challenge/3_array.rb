# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    self.chars.reject.with_index {|c,i| i.odd?}*""
  end

end

# p "abcdefg".every_other_char
