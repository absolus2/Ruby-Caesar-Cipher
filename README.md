# Ruby-Caesar-Cipher

I Know the code looks messy and ugly sorry about that, I hope i can get it to 
work without looking so ugly at some point.

This caesar Cipher only works with Latin Alphabet and not Punctuation
& Symbols (meaning it does not shift the symbols nor Punctuation )

I split the word into an array, convert them using the ord method to the
unicode value so i can work with it, used a shift method to shift the letter
depending if the shift is a negative or  positive number,  return the number,
convert it to a character using chr method and join all the letter from the array
and return a string.