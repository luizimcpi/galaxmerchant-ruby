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
    def self.is_not_question_word(word)
       return word.eql?("is") == false && word.eql?("how") == false && word.eql?("many") == false && word.eql?("much") == false && word.eql?("?") == false && word.eql?("Credits") == false
    end
end

