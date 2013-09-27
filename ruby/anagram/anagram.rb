class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |word| anagram?(word) }
  end

  private
  def anagram?(other)
    same_letters?(@word, other.downcase) && !same_word?(@word, other.downcase)
  end

  def same_letters?(word1, word2)
    sorted_letters(word1) == sorted_letters(word2)
  end

  def same_word?(word1, word2)
    word1 == word2
  end

  def sorted_letters(s)
    s.split(//).sort
  end
end

