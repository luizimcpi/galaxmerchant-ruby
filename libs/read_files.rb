require_relative 'checker_words'

class Reader
    def self.read 
        if ARGV.size > 0
            File.open(ARGV[0], 'r') do |arq|
            while line = arq.gets
                if Checker.verify_main_words(line)
                    puts line
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

