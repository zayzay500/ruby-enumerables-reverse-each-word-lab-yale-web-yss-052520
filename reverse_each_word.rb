require 'pry'
def reverse_each_word(string)
  char_array = string.chars
  reverse_word = []
  reverse_sentence = []
  reverse_string = ""
  
  char_array.collect do |char|
    if char == " "
      reverse_word << char
      reverse_sentence << reverse_word
      reverse_word = []
    elsif char == char_array.last
      reverse_word.unshift(char)
      reverse_sentence << reverse_word
    else
      reverse_word.unshift(char)
    end
  end
  reverse_sentence.each do |word|
    word.each do |char|
      reverse_string += char
    end
  end
  reverse_string
end

