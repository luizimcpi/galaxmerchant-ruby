require_relative 'checker_words'

class OutputFormatter
    
    def format_sentence(input)
        formatted_output = ""
        input_array = input.split
        input_array.each { |word|
            if Checker.is_unecessary_word(word) == false
                formatted_output.concat(word).concat(" ")
            end
        }
        formatted_output.concat("is ") 
        return formatted_output
    end
end

