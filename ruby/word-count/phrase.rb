class WordCounter
  attr_reader :word_counts
  def initialize
    @word_counts = Hash.new(0)
  end

  def count(word)
    word_counts[word.downcase] += 1
  end
end

class Phrase
  attr_reader :text
  attr_reader :word_counter
  def initialize(text)
    @text = text
    @word_counter = WordCounter.new
  end

  def word_count
    @word_count ||= build_word_count
  end

  def build_word_count
    words.each do |word|
      word_counter.count(word)
    end

    word_counter.word_counts
  end

  def words
    text.split(/[^\w]+/)
  end
end
