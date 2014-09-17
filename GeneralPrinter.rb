class Print_array
	def printing(input, deepness=0)
  	if  input.is_a? Array
  		basic_print("Array:", deepness)
    	input.each do |element|
      	PrettyPrinter.new.printing(element, deepness+1)
      end
    end
  end
end

class Print_string
	def printing(input, deepness=0)
    if  input.is_a? String
        basic_print(input, deepness)
    end
  end
end

class Print_hash
	def printing(input, deepness=0)
		if input.is_a? Hash
	   	basic_print("Hash:", deepness)
	   	deepness += 1
	    input.each do |key,value|
        PrettyPrinter.new.printing(key, deepness+1)
        PrettyPrinter.new.printing(value, deepness+1)
	    end
  	end
  end  
end

class Print_date
	def printing(input, deepness=0)
    if  input.is_a? Date
      basic_print(input,deepness)
    end
  end
end

class Print_symbol
  def printing(input, deepness=0)
    if input.is_a? Symbol
      basic_print(input,deepness)
    end
  end
end

class Print_integer
  def printing(input, deepness=0)
    if input.is_a? Integer
      basic_print(input,deepness)
    end
  end
end

class Print_error
  def printing(input, deepness=0)
    basic_print("Error!",deepness)
  end
end

def basic_print(text,deepness=0)
	print "  "*deepness
	puts text
end
