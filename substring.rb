dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(strings, array)
  a1 = array.map { |word| word.downcase }
  a2 = strings.split.map { |word| word.downcase }
  a2.reduce(Hash.new(0)) do |hash, word|
    a1.each do |count|
      hash[count] += 1 if word.include?(count)
  end
    hash
  end
end

p substring("below", dictionary)