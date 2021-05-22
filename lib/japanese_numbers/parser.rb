class JapaneseNumbers::Parser
  DELIMITERS = {
    '万' => 10000,
    '億' => 100000000,
    '兆' => 1000000000000,
    '京' => 10000000000000000,
  }

  # Parses a number written in Japanese.
  #
  # @param str [String] a Japanese number
  # @return [Number] the parsed number
  def self.parse(str)
    self.new.parse(str)
  end

  def parse(str)
    parts = split_to_parts(str)
    res = parts.inject(0) do |sum, part|
      sum + part[0].to_f * (DELIMITERS[part[1]] || 1)
    end
    res.to_i
  end

  # Splits a number written in Japanese into powers of 1000.
  #
  # @param str [String] a Japanese number
  # @return [Array<Number, String>] parts decomposed from the number. Each part consists of a coefficient and its corresponding unit.
  def split_to_parts(str)
    parts = []
    loop do
      coefficient, unit, remains = str.partition(Regexp.union(DELIMITERS.keys))
      parts.push([coefficient, unit])
      str = remains
      break if str == ""
    end
    parts
  end
end
