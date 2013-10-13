class DNA
  attr_reader :sequence

  def initialize(symbols)
    @sequence = Sequence.new(symbols)
  end

  def hamming_distance(symbols)
    other_sequence = Sequence.new(symbols)
    sequence.hamming_distance(other_sequence)
  end
end

class Sequence
  attr_reader :symbols

  def initialize(symbols)
    @symbols = symbols
  end

  def hamming_distance(other)
    nucleotide_pairs(other).count { |n1, n2| n1 != n2 }
  end

  protected
  def nucleotide_pairs(other)
    pairs = nucleotides.zip(other.nucleotides)
    pairs.reject { |pair| pair.any?(&:nil?) }
  end

  def nucleotides
    symbols.chars.map { |symbol| Nucleotide.new(symbol) }
  end
end

class Nucleotide
  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end

  def ==(other)
    symbol == other.symbol
  end
end

