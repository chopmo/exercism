class Phrase
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def word_count
    words = text.split(/[^\w]+/)

    word_counts = Hash.new(0)
    words.each do |word|
      word_counts[word.downcase] += 1
    end

    word_counts
  end
end
