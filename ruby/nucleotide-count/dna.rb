class DNA

  def initialize(seq)
    validate_dna(seq)
    @seq = seq
  end

  def count(nucleotide)
    unless nucleotides.include?(nucleotide)
      raise ArgumentError
    end

    @seq.count(nucleotide)
  end

  def nucleotide_counts
    dna_nucleotides.each_with_object({}) do |nucleotide, counts|
      counts[nucleotide] = count(nucleotide)
    end
  end

  private
  def validate_dna(seq)
    if seq.chars.any? { |nucleotide| !dna_nucleotides.include?(nucleotide) }
      raise ArgumentError
    end
  end

  def nucleotides
    %w(A T C G U)
  end

  def dna_nucleotides
    %w(A T C G)
  end
end
