require 'minitest/autorun'
require_relative '../libs/checker_words'

class CheckerTest < Minitest::Test

    def test_should_return_true_when_sentence_contains_how_much
        test_sentence = "how much is pish tegj glob glob ?"
        result = Checker.contain_allowed_words(test_sentence)
        assert_equal "success", result
    end

    def test_should_return_true_when_sentence_contains_how_many
        test_sentence = "how many Credits is glob prok Silver ?"
        result = Checker.contain_allowed_words(test_sentence)
        assert_equal "success", result
    end

    def test_should_return_error_without_message_when_sentence_doesnt_contains_main_words
        test_sentence = "glob glob Silver is 34 Credits"
        result = Checker.contain_allowed_words(test_sentence)
        assert_equal "error_without_msg", result
    end

    def test_should_return_error_with_msg_when_sentence_contains_some_main_words
        test_sentence = "how much wood could a woodchuck chuck if a woodchuck could chuck wood ?"
        result = Checker.contain_allowed_words(test_sentence)
        assert_equal "error_with_msg", result
    end

    def test_should_return_true_when_word_is_unecessary
        test_word = "how"
        result = Checker.is_unecessary_word(test_word)
        assert_equal true, result
    end

    def test_should_return_false_when_word_is_necessary
        test_word = "glob"
        result = Checker.is_unecessary_word(test_word)
        assert_equal false, result
    end
end