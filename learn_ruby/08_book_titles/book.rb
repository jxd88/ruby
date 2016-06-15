class Book
attr_reader :title
 def title=(a)
 	little_words = ["and", "or", "the", "over", "to", "the", "a", "an", "in", "of"]
   @title = a.capitalize!
   @title = a.split(" ").map {|word| 
        if little_words.include?(word) 
            word
        else
            word.capitalize
        end
    }.join ' '
 end
end