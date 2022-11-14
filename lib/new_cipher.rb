class Caesar_Cipher
  def shift(letters, number, total = [])
    letters.split(//).each do |item|
      base = item.ord < 91 ? 65 : 97
      if check_between(item)
        total.push(((((item.ord - base) + number) % 26) + base).chr)
      else
        total.push(item)
      end
    end
    total.join
  end

  def check_between(item)
    true if item.ord.between?(65, 90) || item.ord.between?(97, 122)
  end

end


new_cipher = Caesar_Cipher.new

p new_cipher.shift("Hello!, que tal?", 5)