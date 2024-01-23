def caesar_cipher(str,shift_key)
  new_str = str.split(" ").map do |word|
    new_word = word.chars.map do |l|
      if is_upcase?(l)
      ((l.ord-"A".ord+shift_key)%26+"A".ord).chr
      else
      ((l.ord-"a".ord+shift_key)%26+"a".ord).chr
      end
    end
    new_word.join
  end
  new_str.join(" ")
end

def is_upcase?(letter)
  letter == letter.upcase ? true : false
end

# puts is_upcase?("A")
# puts caesar_cipher("salut tom",5).inspect