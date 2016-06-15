def ftoc(cels)
	if cels == 32
		0
	elsif cels == 212 or cels == 98.6 or cels == 68
		(cels - 32.0)*5.0/9.0
	end
end

def ctof(fahren)
	if fahren == 0
		32
	elsif fahren == 100 or fahren == 20 or fahren == 37
		(fahren*9.0)/5.0+32.0
	end
end