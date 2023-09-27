# Decode a Morse code character
def decode_char(char)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_alphabet[char]
end

# Decode the Morse code character
character = decode_char('.-')
puts character

# Decode a word
def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
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
