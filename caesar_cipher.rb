def caesar_cipher(string, shift_factor)
  alphabet = ('a'..'z').to_a
  string_arr = string.split("");
  
  string_arr.each_with_index do |letter, index|
    if alphabet.include?(letter.downcase) # does the alphabet include the letter from the string parameter?
      alphabet_index = alphabet.find_index(letter.downcase) # if so, find the index in alphabet where letter is (ignoring case)
      alphabet_index += shift_factor # add shift_factor parameter to alphabet index
      alphabet_index -= 26 if alphabet_index > 25 # check if alphabet index is greater than 25, if so, subtract 26 to 'go back' to beginning of alphabet
      # if letter is uppercase, assign the shifted, uppercase letter in alphabet to string_arr[index]
      string_arr[index] = letter == letter.upcase ? alphabet[alphabet_index].upcase : alphabet[alphabet_index]
    end
  end
  string_arr.join("")
end

p caesar_cipher('What a string!', 5)