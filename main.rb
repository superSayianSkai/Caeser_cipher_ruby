puts "Type in a word"
user_sentence_input = gets.chomp
puts "Type in a number"
user_encyption_no = gets.chomp

def caesar_cipher(user_sentence_input, user_encyption_no)
  alphabets = ('a'..'z').to_a
  user_sentence_input_chars_lowercase= user_sentence_input.chars.map {|user_sentence_input_chars_in_uppercase| user_sentence_input_chars_in_uppercase.downcase}
  alphabets = alphabets.map {|alphabet| alphabet.downcase}
  encypted_parameter=[]

  for user_sentence_input_chars_lowercase_character in user_sentence_input_chars_lowercase

    if alphabets.include?(user_sentence_input_chars_lowercase_character)
      index = alphabets.index(user_sentence_input_chars_lowercase_character) + user_encyption_no.to_i
      if index >= 26
        index = alphabets.length - index
        index= index * -1
      end
        encypted_parameter.push(alphabets[index])
    else
        encypted_parameter.push(user_sentence_input_chars_lowercase_character)
    end
  end

  print encypted_parameter.join
end
caesar_cipher(user_sentence_input, user_encyption_no)
