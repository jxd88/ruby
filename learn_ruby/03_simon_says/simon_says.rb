def echo (a)
a
end

def shout (b)
b.upcase	
end

def repeat (c, d = 2)
	([c]*d).join(' ')
end

def start_of_word (a, b)
a[0, b]
end
def first_word (a)
	a.split.first
end
def titleize (a)
	little_words = ["and", "or", "the", "over", "to", "the", "a"]
	a.capitalize!
	a.split(" ").map {|word| 
        if little_words.include?(word) 
            word
        else
            word.capitalize
        end
    }.join ' '
end