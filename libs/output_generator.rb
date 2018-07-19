require_relative 'output_formatter'

class OutputGenerator
    def print(sentence)
        formatter = OutputFormatter.new
        formatted_output = formatter.remove_unecessary_words(sentence)
        return formatted_output
    end
end

