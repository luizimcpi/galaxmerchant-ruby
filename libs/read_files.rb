require_relative 'checker_words'
require_relative 'output_generator'

class Reader
    def self.read 
        if ARGV.size > 0
            File.open(ARGV[0], 'r') do |arq|
            output = OutputGenerator.new
            while line = arq.gets
                if Checker.contain_allowed_words(line) == "success"
                    puts output.print(line)
                end
                if Checker.contain_allowed_words(line) == "error_with_msg"
                    puts output.print_error
                end
                if Checker.contain_allowed_words(line) == "error_without_msg"
                    puts ""
                end
            end
        end
       else
            msg = "Você deve informar o nome do arquivo a ser aberto. Ex: ruby app.rb entrada.txt"
            puts msg
            return msg
       end
    end
end

