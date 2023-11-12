# * CEASAR'S CIPHER

def ceasar_cipher(input, shift=3)
  # * The alphabet helps us to know the index position of each letter in the original string.
  constants = ""
  cipher = ""

  input.each_char do |letter|
    if letter.match(/[A-Z]/)
      constants = ("A".."Z").to_a
    else
      constants = ("a".."z").to_a
    end

    if letter == " "
      cipher += " "
    elsif !letter.match(/[a-z]/i)
      cipher += letter
    else
      letter_position = constants.find_index(letter)

      # * On reaching the letter "Z", after here there's no more letters to shift to hence it will have to loop.
      # * For this here we will use the modulo operator.

      # ? new_index = ( 26 + 1 ) % 26 the remaimder would be 1

      new_letter_position = ( letter_position + shift ) % constants.count
      cipher += constants[new_letter_position]
    end
  end
  return cipher
end

p ceasar_cipher("(Top), 30", 5)
# ? => "(Ytu), 30"
p ceasar_cipher("Daniel's car", 7)
# ? => "khupl's jhy"
p ceasar_cipher("Ceasar's Cipher.")
# ? => "Fhdvdu'v Flskhu."