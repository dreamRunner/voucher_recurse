  	    def cons(nL, nI)
	    consonant = %w(b c d f g h j k l m n p q r s t v w x z)
	    if nL > 0
	 	    print consonant[rand(consonant.length - 1) ]
		    vowel(nL - 1, nI)
	    else
		    integer(nI)	
	    end
    end

    def vowel(nL, nI)
	    vowel_array = %w(a e i o u)
	    if nL > 0
		    print vowel_array[rand(vowel_array.length - 1) ]
		    cons(nL - 1, nI)
	    else 
		    integer(nI)
	    end
    end
    
    #Adds random string of integers at end of string
    def integer(nI)
	    if nI > 0
		    print rand(9)
		    integer(nI - 1)
	    end
    end
    
    #Creates voucher by calling cons first
	def generate_voucher(num_letters, num_integers)
	    coder = "#{cons(num_letters, num_integers)}"
	    return coder
    end
    
    print(generate_voucher(4, 2))