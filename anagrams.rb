def anagram?(word1,word2)
    array1 = word1.split("").permutation.to_a
    array2 = word2.split("").permutation.to_a

    return array1.all? do |ele|
        array2.include?(ele)
    end
end



# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

def better_ana?(word1, word2)
    word1.each_char do |char|
        j = word2.index(char)
    
        return false if j == nil
        word2.delete!(word2[j])
    end
    return word2.empty?
end
p better_ana?("gizmo", "sally")    #=> false
p better_ana?("elvis", "lives")    #=> true

