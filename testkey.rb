    def cons(nL, nI)
	    consonant = %w(b c d f g h j k l m n p q r s t v w x z sh ch th)
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
	def make_voucher_code(num_letters, num_integers)
	    code = "#{cons(num_letters, num_integers)}"
	    return code
    end
    
    n = 5
    while n > 0
       puts make_voucher_code(5, 3)
       n = n - 1
    end
