def substrings(string, dictionary)
  str = string.downcase
  stringArr = str.split(' ')
  results = Hash.new

  dictionary.each_with_index do |word|
    results[word] = 0
    stringArr.each_with_index do |stringWord|
      if stringWord == word.downcase
        results[word.downcase] += 1
      elsif stringWord.include? word.downcase
        results[word.downcase] += 1
      else
        results[word.downcase] += 0  
      end
    end

    if results[word.downcase] == 0
      results.delete(word.downcase)
    end
    
  end
  
  
  
  puts results
end

myDictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", myDictionary)

