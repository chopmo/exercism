class Anagram
  def initialize(word)
    @subject_word = Word.new(word)
  end

  def match(words)
    words.select { |word| @subject_word.anagram_of?(word) }
  end
end

class Word
  attr_reader :word
  def initialize(word)
    @word = word.downcase
  end

  def anagram_of?(other)
    same_letters_as?(other.downcase) && !same_word_as?(other.downcase)
  end

  def same_letters_as?(other)
    sorted_letters(word) == sorted_letters(other)
  end

  def same_word_as?(other)
    word == other
  end

  private
  def sorted_letters(s)
    s.split(//).sort
  end
end
