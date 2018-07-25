# Implement run-length encoding and decoding.
class RunLengthEncoding
  def self.encode(input)
    return '' if input.empty?
    result = []
    counts = []
    current = input[0]
    result << current
    i = 0
    counts[i] = 0
    input.each_char do |chr|
      if chr == current
        counts[i] += 1
      else
        i += 1
        counts[i] = 1
        current = chr
        result << current
      end
    end

    encode = ""
    result.each_with_index do |chr, index|
      encode << (counts[index] == 1 ? chr : "#{counts[index]}#{chr}")
    end
    encode
  end

  def self.decode(input)
    return '' if input.empty?

    counts = input.scan(/\d+/)
    return input if counts.empty?

    substrings = input.scan(/[a-zA-Z ]+/)

    counts.each_with_index.map do |c, index|
      (substrings[index][0] * c.to_i + substrings[index][1..-1])
    end.join
  end
end


module BookKeeping
  VERSION = 3
end


input = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
# input = '  hsqq qww  '
# output = '12WB12W3B24WB'
# input = ''
# print RunLengthEncoding.encode(input)
# RunLengthEncoding.encode(input)

# input = 'XYZ'
# input = '2A3B4C'
input = '12WB12W3B24WB'
# input = '2 hs2q q2w2 '
# output = '  hsqq qww  '
RunLengthEncoding.decode(input)
