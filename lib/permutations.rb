
def permutations?(string1, string2)
  hash = {}
  string1.each_char do |letter|
    if hash[letter].nil?
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  string2.each_char do |letter|
    # if letter is not exist in hash => return false
    if hash[letter].nil?
      return false
    else
      hash[letter] -= 1
    end
  end
 
  # if there are values that is not equal to 0 => return false; else return true
  hash.values.all? {|value| value == 0} ? true : false
  
end
