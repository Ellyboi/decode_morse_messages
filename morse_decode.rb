def decode_char(letter)
  case letter
  when '.-'
    'A'
  when '-...'
    'B'
  when '-.-.'
    'C'
  when '-..'
    'D'
  when '.'
    'E'
  when '..-.'
    'F'
  when '--.'
    'G'
  when '....'
    'H'
  when '..'
    'I'
  when '.---'
    'J'
  when '-.-'
    'K'
  when '.-..'
    'L'
  when '--'
    'M'
  when '-.'
    'N'
  when '---'
    'O'
  when '.--.'
    'P'
  when '--.-'
    'Q'
  when '.-.'
    'R'
  when '...'
    'S'
  when '-'
    'T'
  when '..-'
    'U'
  when '...-'
    'V'
  when '.--'
    'W'
  when '-..-'
    'X'
  when '-.--'
    'Y'
  when '--..'
    'Z'
  else
    nil
  end
end

def decode_word(code) 
  code.split(' ').map { |char| decode_char(char) }.join
end

def decode_message(code)
  code.split('   ').map { |word| decode_word(word) }.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...', morse_characters)