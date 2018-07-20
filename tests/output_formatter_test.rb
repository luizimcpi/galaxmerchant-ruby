require 'minitest/autorun'
require_relative '../libs/output_formatter'

class OutputFormatterTest < Minitest::Test

    def test_should_remove_how_much_and_interrogation_with_success
        formatter = OutputFormatter.new 
        test_sentence = "how much is pish tegj glob glob ?"
        result = formatter.format_sentence(test_sentence)
        expected_result = "pish tegj glob glob is 42"
        assert_equal expected_result, result
    end

    def test_should_remove_how_many_and_interrogation_with_success
        formatter = OutputFormatter.new 
        test_sentence = "how many Credits is glob prok Silver ?"
        result = formatter.format_sentence(test_sentence)
        expected_result = "glob prok Silver is 68 Credits"
        assert_equal expected_result, result
    end
end