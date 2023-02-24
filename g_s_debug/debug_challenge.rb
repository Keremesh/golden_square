def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
#   p counter.to_a.sort_by { |k, v| v }[0][0] # { |k, v| v} - we want to sort by key and value, we want value is acending order. -v is in descending order
  counter.delete(" ")
  p counter.to_a.sort_by { |k, v| -v }[0][0] 
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
puts get_most_common_letter("the roof, the roof, the roof is on fire!")