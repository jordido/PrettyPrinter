require 'pry'
require 'date'

a_date = Date.today
a_hash = {key: "value", other_key: "other_value", a_date => [1,2,3,"hello lunch"] }


class PrettyPrinter
    def initialize
        @array_level = 0
    end


    def print_array(array)
        my_puts "Array: "
        @array_level += 1
        array.each do |n|
            if n.is_a? Array
                print(n)
                @array_level -= 1
            else 
                print_other(n)
            end
        end        
    end

    def print_hash(hash)
        my_puts "Hash:" 
        @array_level += 1
        hash.each do |key,value|
            print(key)
            my_puts("=>")
            print(value)
            puts ""
        end
        @array_level -= 1     
    end



    def print(stuff)
        if stuff.is_a? Array
            print_array(stuff)
        else
            print_other(stuff)
        end
    end

    def print_other(n)
        if n.is_a? Hash
             print_hash(n)
        elsif (n.is_a? String) || (n.is_a? Symbol)
            my_puts n
        elsif (n.is_a? Integer) || (n.is_a? Date)
            my_puts n.to_s
        else
            my_puts "Error!"
        end
    end

    def my_puts (n)
        if @array_level == 0
            puts (n)
        else 
            text = ""
            @array_level.times { text += "  " }
            text += "#{n}"
            puts text
        end
    end

end


PrettyPrinter.new.print(["My", 3, a_hash, a_date, [["Pied", "Piper"],["oerte", "drz"],"thirs"]])