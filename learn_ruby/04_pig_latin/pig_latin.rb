def translate(a)
    vowels = ["a", "e", "o", "u", "i", "y"]
	a.split(' ').map! {|b|
		if !vowels.include?(b.split(//)[0]) && !vowels.include?(b.split(//)[1]) && !vowels.include?(b.split(//)[2]) or b.split(//)[1, 2].join() == "qu"
			b.split(//).drop(3).push(b.split(//).shift(3)).push("ay").join()
		elsif !vowels.include?(b.split(//)[0]) && !vowels.include?(b.split(//)[1]) or b.split(//).shift(2).join() == "qu"
			b.split(//).drop(2).push(b.split(//).shift(2)).push("ay").join()
		elsif vowels.include?(b.split(//).first)
			b + "ay"
		else
			b.split(//).drop(1).push(b.split(//).first).push("ay").join()
		end
	}.join(' ')
end