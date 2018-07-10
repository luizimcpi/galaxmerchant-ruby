class Reader
    def self.read 
        if ARGV.size > 0
            File.open(ARGV[0], 'r') do |arq|
            while line = arq.gets
                puts line
            end
        end
       else
            msg = "Você deve informar o nome do arquivo a ser aberto. Ex: ruby app.rb entrada.txt"
            puts msg
            return msg
       end
    end
end

