require 'minitest/autorun'
require_relative '../libs/checker_words'

class CheckerTest < Minitest::Test

    def test_should_return_true_when_sentence_contains_how_much
        test_sentence = "how much is pish tegj glob glob ?"
        expected_result = Checker.verify_main_words(test_sentence)
        assert_equal true, expected_result
    end

    def test_should_return_true_when_sentence_contains_how_many
        test_sentence = "how many Credits is glob prok Silver ?"
        expected_result = Checker.verify_main_words(test_sentence)
        assert_equal true, expected_result
    end

    def test_should_return_false_when_sentence_doesnt_contains_main_words
        test_sentence = "glob glob Silver is 34 Credits"
        expected_result = Checker.verify_main_words(test_sentence)
        assert_equal false, expected_result
    end
end