# Implement run-length encoding and decoding.
class RunLengthEncoding
  def self.encode(input)
    return '' if input.empty?
    initials = []
    current_index = 0
    initials[0] = ''

    input.split("").each_with_index do |chr, index|
      if chr == input[current_index]
        initials[-1] << chr
      else
        initials.push(chr)
        current_index = index
      end
    end

    initials.map do |substring|
      substring_size = substring.size
      substring_size == 1 ? substring : "#{substring_size}#{substring[0]}"
    end.join
  end

  def self.decode(input)
    return '' if input.empty?

    counts = input.scan(/\d+/)
    return input if counts.empty?

    initials = input.scan(/[a-zA-Z ]+/)

    counts.each_with_index.map do |c, index|
      (initials[index][0] * c.to_i + initials[index][1..-1])
    end.join
  end
end

module BookKeeping
  VERSION = 3
end

# input = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
# # input = '  hsqq qww  '
# # output = '12WB12W3B24WB'
# # input = ''
# # print RunLengthEncoding.encode(input)
# print RunLengthEncoding.encode(input)

# input = 'XYZ'
# input = '2A3B4C'
# input = '12WB12W3B24WB'
# input = '2 hs2q q2w2 '
# output = '  hsqq qww  '
# RunLengthEncoding.decode(input)
