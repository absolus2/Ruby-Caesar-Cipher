require './lib/new_cipher'

describe Caesar_Cipher do
  describe "#shift" do
    it "it shift the letter position base on a number" do
      caesar_cipher = Caesar_Cipher.new
      expect(caesar_cipher.shift("a", 5)).to eql('f')
    end

    it "It can shift the position of entire words too" do
      caesar_cipher = Caesar_Cipher.new
      expect(caesar_cipher.shift("hola", 5)).to eql('mtqf')
    end

    it "it can shift the position with negative numbers" do
      caesar_cipher = Caesar_Cipher.new
      expect(caesar_cipher.shift("hola", -5)).to eql("cjgv")
    end

    it "it shift puntuation signs" do
      caesar_cipher = Caesar_Cipher.new
      expect(caesar_cipher.shift("Hola!, Que Tal?", 5)).to eql("Mtqf!, Vzj Yfq?")
    end


  end

end