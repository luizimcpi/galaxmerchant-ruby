require_relative 'checker_words'
require_relative 'output_calculator'

class OutputFormatter
    
    def format_sentence(input)
        formatted_output = ""
        input_array = input.split
        coin_array = Array.new
        contains_variable_coin = false
        input_array.each { |word|
            if Checker.is_coin_word(word)
                coin_array.push word
            end
            if Checker.is_unecessary_word(word) == false
                formatted_output.concat(word).concat(" ")
            end
            if Checker.is_variable_coin_word(word)
                contains_variable_coin = true
            end
        }
        formatted_output.concat("is ") 
      
        if coin_array.empty? == false
            calculator = Calculator.new
            value = calculator.sum_coin_symbols(coin_array)
            formatted_output.concat(value)
        end

        if contains_variable_coin
            formatted_output.concat(" ").concat("Credits")
        end

        return formatted_output
    end
end

