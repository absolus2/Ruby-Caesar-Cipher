def caesar_cipher(word, shift)
  word.split("").map{|char| char.ord}.map{|char| shift(char, shift)}.map{|char|
  char.chr}.join("")
end

def shift(letter, shift)
  shift > 0 ? shiftplus(letter, shift) : shiftnegative(letter, shift)
end

def shiftplus(letter, shift)
  counter = 0
  if letter >= 65 && letter <= 90
    until counter == shift
      if letter >= 90
        letter = 64
      end
      letter += 1
      counter += 1
    end

  elsif letter >= 97 && letter <= 122
    until counter == shift
      if letter >= 122
        letter = 96
      end
      letter += 1
      counter += 1
    end
  end
  letter
end

def shiftnegative(letter, shift)
  counter = 0
  if letter >= 65 && letter <= 90
    until counter == shift
      if letter <= 65
        letter = 91
      end
      letter -= 1
      counter -= 1
    end

  elsif letter >= 97 && letter <= 122
    until counter == shift
      if letter <= 97
        letter = 123
      end
      letter -= 1
      counter -= 1
    end
  end
  letter
end

p caesar_cipher("Mjqqt, Btwqi!", -5)