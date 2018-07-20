require_relative './exceptions/sequence_number_exception'
require_relative './model/number'

class Calculator
	def sum_coin_symbols(coin_array)
		result = ""
		i = 0
		sum = 0
		last_number=0
		number_one = Number.new(1)
		number_five = Number.new(5)
		number_ten = Number.new(10)
		number_fifty = Number.new(50)
		coin_array.each { |coin|
			if coin.eql?("glob")
				if last_number == number_one.value && number_one.sequence_times > 2
					raise SequenceNumberError.new
				end
				if (last_number == number_one.value && number_one.sequence_times <= 2) || i == 0
					number_one.increment_sequence_times
					sum = sum + number_one.value
					last_number = number_one.value
					i = i + 1
				end	
				number_ten.default_sequence_times
			end
			if coin.eql?("prok")
				last_number = number_five.value
				sum = sum + number_five.value
				number_one.default_sequence_times
				number_ten.default_sequence_times
			end
			if coin.eql?("pish")	
				if last_number == number_ten.value && number_ten.sequence_times > 2
					raise SequenceNumberError.new
				end
				if (last_number == number_ten.value && number_ten.sequence_times <= 2) || i == 0
					number_ten.increment_sequence_times
					sum = sum + number_ten.value
					last_number = number_ten.value
					i = i + 1
				end	
				number_one.default_sequence_times
			end
			if coin.eql?("tegj")
				last_number = number_fifty.value
				sum = sum + number_fifty.value
				number_one.default_sequence_times
				number_ten.default_sequence_times
			end
		}
		result = sum.to_s
		return result
	end
end