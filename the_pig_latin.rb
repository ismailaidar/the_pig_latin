class ThePigLatin
  VOWELS = ["a", "e", "i", "o", "u"]
  def self.translate(text)
      text.split(" ").map{ |w| pigify(w) }.join(" ")		
  end
    
  def self.pigify(word)
    return word + "yay" if VOWELS.any?{ |x| word.start_with?(x) }
    consonant_cluster = word[0]
    for i in 1...word.length
      if VOWELS.include?(word[i])
        break
      end
      consonant_cluster += word[i]
    end
    word[consonant_cluster.length..-1] + consonant_cluster + "ay"
  end
end