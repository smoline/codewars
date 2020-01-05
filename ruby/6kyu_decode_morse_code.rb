# https://www.codewars.com/kata/decode-the-morse-code/train/ruby

require 'awesome_print'

# NOT WORKING
# def decodeMorse(morseCode)
#   array = morseCode.strip.split("   ")
#   new_array = array.map do |w|
#     w.split(" ")
#   end
#   ap new_array
#   word = new_array.map do |l|
#     l.map do |i|
#       case i
#         when "...---..." ; word += "SOS"
#         when "-.-.--" ; word += "!"
#         when ".-.-.-" ; word += "."
#         when ".-" ; word += "A"
#         when "-..." ; word += "B"
#         when "-.-." ; word += "C"
#         when "-.." ; word += "D"
#         when "." ; word += "E"
#         when "..-." ; word += "F"
#         when "--." ; word += "G"
#         when "...." ; word += "H"
#         when ".." ; word += "I"
#         when ".---" ; word += "J"
#         when "-.-" ; word += "K"
#         when ".-.." ; word += "L"
#         when "--" ; word += "M"
#         when "-." ; word += "N"
#         when "---" ; word += "O"
#         when ".--." ; word += "P"
#         when "--.-" ; word += "Q"
#         when ".-." ; word += "R"
#         when "..." ; word += "S"
#         when "-" ; word += "T"
#         when "..-" ; word += "U"
#         when "...-" ; word += "V"
#         when ".--" ; word += "W"
#         when "-..-" ; word += "X"
#         when "-.--" ; word += "Y"
#         when "--.." ; word += "Z"
#         when ".----" ; word += "1"
#         when "..---" ; word += "2"
#         when "...--" ; word += "3"
#         when "....-" ; word += "4"
#         when "....." ; word += "5"
#         when "-...." ; word += "6"
#         when "--..." ; word += "7"
#         when "---.." ; word += "8"
#         when "----." ; word += "9"
#         when "-----" ; word += "0"
#       end
#     end
#   end
#     word.join
#     ap word
# end

# answer = decodeMorse('.... . -.--   .--- ..- -.. .')
# ap answer
# # 'HEY JUDE'

# answer = decodeMorse('...---...')
# ap answer
# # 'SOS'

def decodeMorse2(morseCode)
  letters = []
  words = []
  word = ""
  sentence = morseCode.split("   ")

  sentence.each_with_index do |x,i|
    letters[i] = x.split(" ")
  end

  0.upto(letters.length - 1) do |i|
    word = ""
    0.upto(letters[i].length - 1) do |x|
      case letters[i][x]
      when "...---..." then word += "SOS"
      when "-.-.--" then word += "!"
      when ".-.-.-" then word += "."
      when ".-" then word += "A"
      when "-..." then word += "B"
      when "-.-." then word += "C"
      when "-.." then word += "D"
      when "." then word += "E"
      when "..-." then word += "F"
      when "--." then word += "G"
      when "...." then word += "H"
      when ".." then word += "I"
      when ".---" then word += "J"
      when "-.-" then word += "K"
      when ".-.." then word += "L"
      when "--" then word += "M"
      when "-." then word += "N"
      when "---" then word += "O"
      when ".--." then word += "P"
      when "--.-" then word += "Q"
      when ".-." then word += "R"
      when "..." then word += "S"
      when "-" then word += "T"
      when "..-" then word += "U"
      when "...-" then word += "V"
      when ".--" then word += "W"
      when "-..-" then word += "X"
      when "-.--" then word += "Y"
      when "--.." then word += "Z"
      when ".----" then word += "1"
      when "..---" then word += "2"
      when "...--" then word += "3"
      when "....-" then word += "4"
      when "....." then word += "5"
      when "-...." then word += "6"
      when "--..." then word += "7"
      when "---.." then word += "8"
      when "----." then word += "9"
      when "-----" then word += "0"
      end
    end
    words << word if word != ""
  end
  words.join(" ")
end

answer = decodeMorse2('.... . -.--   .--- ..- -.. .')
ap answer
# 'HEY JUDE'

answer = decodeMorse2('...---...')
ap answer
# 'SOS'

# # Another Way (NOT WORKING)
# def decodeMorse3(morseCode)
#   morseCode.strip.split("   ").map { |w| w.split(" ").map { |c| MORSE_CODE[c] }.join }.join(" ")
# end

# answer = decodeMorse3('.... . -.--   .--- ..- -.. .')
# ap answer
# # 'HEY JUDE'

# answer = decodeMorse3('...---...')
# ap answer
# # 'SOS'
