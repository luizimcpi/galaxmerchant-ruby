require 'minitest/autorun'
require_relative '../libs/output_calculator'

class OutputFormatterTest < Minitest::Test

    def test_should_sum_coin_array_without_variable_coins
        calculator = Calculator.new 
        test_coins_array = ["pish", "tegj", "glob", "glob"]
        result = calculator.sum_coin_symbols(test_coins_array)
        expected_result = "42"
        assert_equal expected_result, result
    end


    def test_should_sum_coin_array_with_variable_coins
        calculator = Calculator.new 
        test_coins_array = ["glob", "prok", "Silver"]
        result = calculator.sum_coin_symbols(test_coins_array)
        expected_result = "68"
        assert_equal expected_result, result
    end

end