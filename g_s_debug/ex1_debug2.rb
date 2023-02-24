class LetterCounter
  def initialize(text)
    @text = text
    # binding.irb
  end

  def calculate_most_common()
    counter = Hash.new(1)
    # binding.irb
    most_common = nil
    # binding.irb
    most_common_count = 0 # issue here, started with one and showed D-3
    # binding.irb
    @text.chars.each do |char|
    #    binding.irb
      next unless is_letter?(char)
    #   binding.irb
       counter[char] = (counter[char] || 1) + 1
    #   binding.irb
      if counter[char] > most_common_count
        # binding.irb
        most_common = char
        # binding.rb
        most_common_count += counter[char]
      end
    end
    # binding.irb
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
    # binding.irb
  end
end

counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

# Intended output:
# [2, "i"]