class Phrase

  attr_reader :text
  def initialize(text)
    @text = text
  end

  def word_count
    words = text.split(/\s+/)
    grouped_words = words.group_by { |word| word.downcase }

    counts = Hash.new
    grouped_words.each_pair do |word, occurrences|
      counts[word] = occurrences.size
    end
    counts
  end
end
