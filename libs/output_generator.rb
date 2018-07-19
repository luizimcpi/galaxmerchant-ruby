require_relative 'output_formatter'

class OutputGenerator
    def print(sentence)
        formatter = OutputFormatter.new
        formatted_output = formatter.format_sentence(sentence)
        return formatted_output
    end
end

