require_relative 'GeneralPrinter'
require 'pry'
require 'date'

a_date = Date.today
a_hash = {key: "value", other_key: "other_value", a_date => [1,2,3,"hello lunch"] }

class PrettyPrinter
	def initialize

	end

	def printing (stuff,deepness=0)
		if [Print_array.new.printing(stuff,deepness), 
			Print_string.new.printing(stuff,deepness),
			Print_integer.new.printing(stuff,deepness),
			Print_hash.new.printing(stuff,deepness),
			Print_date.new.printing(stuff,deepness),
			Print_symbol.new.printing(stuff,deepness)].find
		else
			Print_error.new.printing(stuff,deepness)
		end
	end

end

PrettyPrinter.new.printing(["My", 3, a_hash, a_date, [["Pied", "Piper"],["oerte", "drz"],"thirs"]])

# PrettyPrinter.new.printing([["My","Yours"],"second"])