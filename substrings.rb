def substrings(string, dictionary) 
  results_array = []
  results_counted = Hash.new(0)
  dictionary.each {|substring| results_array += string.downcase.scan(substring)}
  results_array.each do |result|
    results_counted[result] += 1
  end
  return results_counted
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

