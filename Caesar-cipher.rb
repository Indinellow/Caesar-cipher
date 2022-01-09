def caesar_cipher(string,number)
  char_array = string.split("")
    cipher = char_array.map do |character|
    character=character.ord
    if character>=65 && character<=90
      if character+number>90
        character=64+(character+number)%90
      else
      character=character+number
      end
 
    elsif character>=97 && character<=122 
      if character+number>122
        character=96+(character+number)%122

      else 
        character=character+number
      end
    else
      character
    end
  end
  cipher = cipher.map {|char| char.chr}.join
  p cipher
  return cipher
end

caesar_cipher("What a string!",5)
