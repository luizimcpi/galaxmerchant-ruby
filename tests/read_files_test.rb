require 'minitest/autorun'
require_relative '../libs/read_files'

class ReaderTest < Minitest::Test

    def setup
        @msg = Reader.read
    end 

    def test_should_show_message_when_file_not_passed_in_parameters
        expected_msg = "Você deve informar o nome do arquivo a ser aberto. Ex: ruby app.rb entrada.txt"
        assert_equal expected_msg, @msg
    end
end