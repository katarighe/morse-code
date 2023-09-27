# Create a method to decode a Morse code character
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

# Decode the entire word
word = decode_word('-- -.--   -. .- -- .')
puts word

# Decode a message
def decode_message(message)
  message.split('   ').map { |word| decode_word(word) }.join(' ')
end

# Decode the entire message
message = decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts message
