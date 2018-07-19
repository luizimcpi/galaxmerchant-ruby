require_relative 'checker_words'

class OutputFormatter
    
    def remove_unecessary_words(input)
        formatted_output = ""
        input_array = input.split
        input_array.each { |word|
            if Checker.is_not_question_word(word)
                formatted_output.concat(word).concat(" ")
            end
        }
        formatted_output.concat("is ") 
        return formatted_output
    end
end
