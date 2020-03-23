
def palindrome_permutation?(string)
  hash = {}
  # keys are the letters and their values are their counts
  string.each_char do |letter|
    if hash[letter].nil?
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  if string.length.even? && hash.keys.length == string.length/2 
    return true 
  elsif string.length.odd? && hash.keys.length == string.length / 2 + 1
    return true
  else 
    return false
  end
end