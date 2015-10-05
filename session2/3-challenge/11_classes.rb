# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  attr_accessor 'number'

  def initialize(number)
  @number = number < 0 ? 0 : (number > 99 ? 99 : number)
  end



  def print_song

    # require './english_number.rb'
    return if number == 0
    number = @number

    (2..number).reverse_each do |bottle|
      puts "#{(english_number_small (bottle)).capitalize}bottles of beer on the wall,"
      puts "#{(english_number_small (bottle)).capitalize}bottles of beer,"
      puts "Take one down, pass it around,"
      if number == 2
        puts "One bottle of beer on the wall,"
      else
        puts "#{(english_number_small (bottle-1)).capitalize}bottles of beer on the wall."
      end
      puts
    end
  puts "One bottle of beer on the wall,"
  puts "One bottle of beer,"
  puts "Take one down, pass it around,"
  puts "Zero bottles of beer on the wall."
  end


  def english_number_small number
    return 'zero ' if number == 0
    ones = ['','one','two','three','four','five','six','seven','eight','nine']
    tens = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)
    teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    result = ''
    num_of_hundreds = number/100
    if num_of_hundreds > 0
      result += ones[num_of_hundreds] + ' hundred '
      number -= num_of_hundreds*100
    end
    if number >= 20
      result += tens[number/10] + '-' + ones[number % 10] + ' '
    elsif number >=10 && number <= 19
      result += teens[number - 10] + ' '
    elsif number > 0
      result += ones[number] + ' '
    end
    result.gsub!('  ',' ')
    result
  end


  # def english_number number
  #   return 'zero' if number == 0
  #   result = ""

  #   namesOfBigNumbers = {
  #                       0 => "",
  #                       1 => "thousand",
  #                       2 => "million",
  #                       3 => "billion",
  #                       4 => "trillion",
  #                       5 => "quadrillion",
  #                       6 => "quintillion",
  #                       7 => "sextillion",
  #                       8 => "septillion",
  #                       9 => "octillion",
  #                       10 => "nonillion",
  #                       11 => "decillion",
  #                       12 => "undecillion",
  #                       13 => "duodecillion",
  #                       14 => "tredecillion",
  #                       15 => "quattuordecillion",
  #                       16 => "quindecillion",
  #                       17 => "sexdecillion",
  #                       18 => "septendecillion",
  #                       19 => "octodecillion",
  #                       20 => "novemdecillion",
  #                       21 => "vigintillion"
  #                     }

  #   findMultiples(number).each do |key,value|
  #     if value != 0
  #     result = english_number_small(value) + namesOfBigNumbers[key] + " " + result + " "
  #     else
  #     end
  #   end
  #   result.gsub!('- ',' ')
  #   result.strip!

  # end


  # def findMultiples number
  #   multiplesOfThree = (number.to_i.to_s.length / 3)

  #   numberHash = {}

  #   left = number

  #   (0..multiplesOfThree).each do |index|
  #       numberHash[index] = left % 1000
  #     left /= 1000
  #   end
  #   numberHash
  # end
end

# ezzy_song = Beersong.new(10)
# ezzy_song.print_song
# BeerSong.new(3).print_song

