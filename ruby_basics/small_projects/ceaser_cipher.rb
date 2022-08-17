def caesar_cipher(string, shift_factor=0)
  ord_array = []
  cipher_ord_array = []
  cipher_array = []

  string_array = string.downcase.chars

  for i in string_array
    ord_array.push(i.ord)
  end

  for i in ord_array
    if i < 97 || i > 127
      cipher_ord_array.push(i)

    elsif i + shift_factor > 127
      x = i + shift_factor
      y = x - 122
      cipher_ord_array.push(96 + y)
    else cipher_ord_array.push(i + shift_factor)
    end
  end

  for i in cipher_ord_array
    cipher_ord_array.push(i.chr)
  end
end

p caesar_cipher("What a string!", 9)