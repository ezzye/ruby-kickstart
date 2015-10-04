# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  result = []
  string.chars.each_with_index {|x,i| i.odd? ? result << x : ''} if return_odds
  string.chars.each_with_index {|x,i| i.even? ? result << x : ''} if !return_odds
  result*''
end

# p odds_and_evens("abcd", true)