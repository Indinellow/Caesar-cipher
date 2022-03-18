# frozen_string_literal: true

def shift_char(character, number, bot, top)
  if character + number > top
    bot - 1 + (character + number) % top
  else
    character + number
  end
end

def upper_or_lower_char(character, number)
  if character >= 65 && character <= 90
    shift_char(character, number, 65, 90)
  elsif character >= 97 && character <= 122
    shift_char(character, number, 97, 122)
  else
    character
  end
end

def caesar_cipher(string, number)
  char_array = string.split('')
  cipher = char_array.map do |character|
    character = character.ord
    upper_or_lower_char(character, number)
  end
  cipher.map(&:chr).join
end

p caesar_cipher('What a string!', 5)
