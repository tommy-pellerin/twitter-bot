dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def world_counter(str,dictionnary)
  hash = Hash.new(0)
  dictionnary.each do |word|
    hash[word] = word_in_string?(str,word)
    
  end
  final_hash = hash.select{|key,value| value>0}
  return final_hash
end

def word_in_string?(str,word_to_find)
  # Convertir la phrase en minuscules pour rendre la recherche insensible à la casse
  # # Utiliser la méthode `scan` pour trouver toutes les occurrences du mot
  occurences = str.downcase.scan(/#{word_to_find}/i).size

  return occurences

end

# puts world_counter("Howdy partner, sit down! How's it going?",dictionnary).inspect
# puts word_in_string?("Howdy partner, sit down! How's it going?","it").inspect