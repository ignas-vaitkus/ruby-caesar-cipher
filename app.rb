def caesar_cipher(str, shift_factor)
  def shift_char(char, shift)
    if char =~ /[a-z]/
      shifted = ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
    elsif char =~ /[A-Z]/
      shifted = ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
    else
      shifted = char  # No change for non-alphabetic characters
    end
    shifted
  end

  cipher = ""
  str.split("").each { |char| cipher << shift_char(char, shift_factor) }
  puts cipher
end

caesar_cipher("What a string!", 5)
