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
    def self.is_unecessary_word(word)
        words_denied_array = ["is","how","many","much","Credits","?"]
        words_denied_array.each { |denied_word|
            if word.eql?(denied_word)
                return true
            end
        }
        return false
    end
end

