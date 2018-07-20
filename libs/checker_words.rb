class Checker
    def self.contain_allowed_words(sentence)
        contains_question_word = false
        contains_unrecognized_word = false

        if sentence.include? "how much"
            contains_question_word = true 
        end

        if sentence.include? "how many"
            contains_question_word = true 
        end
        
        words_allowed_array = ["glob","prok","pish","tegj","Silver","Gold","Iron","is","how","many","much","Credits","?","I","V","X","L"]
        sentence_array = sentence.split
        
        sentence_array.each { |word_of_sentence|
            if words_allowed_array.include?(word_of_sentence) == false
                contains_unrecognized_word = true
                break
            end
        }
        if contains_question_word == false && contains_unrecognized_word
            return "error_without_msg"
        end
        if contains_question_word && contains_unrecognized_word == false
            return "success"
        end
        if contains_question_word && contains_unrecognized_word
            return "error_with_msg"
        end

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

    def self.is_coin_word(word)
        coin_words_array = ["glob","prok","pish","tegj","Silver","Gold","Iron"]
        return coin_words_array.include?(word)
    end

    def self.is_metal_coin_word(word)
        variable_coin_words_array = ["Silver","Gold","Iron"]
        return variable_coin_words_array.include?(word)
    end
end

