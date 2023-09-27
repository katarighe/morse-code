# Decode a Morse code character
def decode_char(character)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_alphabet[character]
end

# Decode the Morse code character
character = decode_char('.-')
puts character

# Decode a word
def decorde_word(word)
  word.split.map { |character| decode_char(character) }.join
end

# Argument sent MY NAME
word = decode_word('-- -.--   -. .- -- .')
puts word

# Decode a whole message
def decode_message(message)
  message.split('   ').map { |word| decode_char(word) }.join(' ')
end

# Decode the message from the old bottle called as MY NAME
message = decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts message
