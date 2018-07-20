require 'minitest/autorun'
require_relative '../libs/output_calculator'

class OutputFormatterTest < Minitest::Test

    def test_should_sum_coin_array_without_variable_coins
        test_coins_array = ["pish", "tegj", "glob", "glob"]
        result = Calculator.sum_coin_symbols(test_coins_array)
        expected_result = "42"
        assert_equal expected_result, result
    end


    def test_should_sum_coin_array_with_variable_coins
        test_coins_array = ["glob", "prok", "Silver"]
        result = Calculator.sum_coin_symbols(test_coins_array)
        expected_result = "68"
        assert_equal expected_result, result
    end

    def test_should_sum_coin_array_when_glob_is_repeated_three_times_in_sequence
        test_coins_array = ["glob", "glob", "glob"]
        result = Calculator.sum_coin_symbols(test_coins_array)
        expected_result = "3"
        assert_equal expected_result, result
    end

    def test_should_sum_coin_array_when_pish_is_repeated_three_times_in_sequence
        test_coins_array = ["pish", "pish", "pish"]
        result = Calculator.sum_coin_symbols(test_coins_array)
        expected_result = "30"
        assert_equal expected_result, result
    end

    def test_should_throw_number_sequence_exception_when_glob_is_repeated_more_than_three_times_in_sequence
        test_coins_array = ["glob", "glob", "glob","glob"]
        assert_raises(SequenceNumberError){ Calculator.sum_coin_symbols(test_coins_array) }
    end

    def test_should_throw_number_sequence_exception_when_pish_is_repeated_more_than_three_times_in_sequence
        test_coins_array = ["pish", "pish", "pish","pish"]
        assert_raises(SequenceNumberError){ Calculator.sum_coin_symbols(test_coins_array) }
    end

end