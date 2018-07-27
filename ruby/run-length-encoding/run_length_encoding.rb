# Implement run-length encoding and decoding.
class RunLengthEncoding
  def self.encode(input)
    return '' if input.empty?
    initials = []
    # counts = []
    # current = input[0]
    # initials << current
    # i = 0
    # counts[i] = 0
    # input.each_char do |chr|
    #   if chr == current
    #     counts[i] += 1
    #   else
    #     i += 1
    #     counts[i] = 1
    #     current = chr
    #     initials << current
    #   end
    # end

    # initials.each_with_index.map do |chr, index|
    #   (counts[index] == 1 ? chr : "#{counts[index]}#{chr}")
    # end.join
    current_index = 0
    initials[0] = ""
    input.split("").each_with_index do |chr, index|
      # puts "#{chr} - #{current}"
      if chr == input[current_index]
        # puts "same value"
        initials[-1] << chr
        # puts input[current_index]
      else
        # puts "new value"
        initials.push(chr)
        current_index = index
      end
      # print initials
      # puts ""
      # puts "#{chr} - #{current}"
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

input = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
# input = '  hsqq qww  '
# output = '12WB12W3B24WB'
# input = ''
# print RunLengthEncoding.encode(input)
print RunLengthEncoding.encode(input)

# input = 'XYZ'
# input = '2A3B4C'
# input = '12WB12W3B24WB'
# input = '2 hs2q q2w2 '
# output = '  hsqq qww  '
# RunLengthEncoding.decode(input)
