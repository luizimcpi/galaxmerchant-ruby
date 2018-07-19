class Checker
    def self.verify_main_words(sentence)
        if sentence.include? "how much" 
            return true
        end
        if sentence.include? "how many" 
            return true
        end
        return false
    end
end

