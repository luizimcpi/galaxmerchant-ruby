require_relative './exceptions/sequence_number_exception'
require_relative './model/number'

class Calculator
	
	def self.sum_coin_symbols(coin_array)
		result = ""
		i = 0
		sum = 0
		last_number = 0
		number_one = Number.new(1)
		number_two = Number.new(2)
		number_three = Number.new(3)
		number_four = Number.new(4)
		number_five = Number.new(5)
		number_ten = Number.new(10)
		number_fifty = Number.new(50)
		coin_array.each { |coin|
			if coin.eql?("glob")
				if is_number_repeated_more_than_three_times(number_one, last_number)
					raise SequenceNumberError.new
				end
				
				if (is_number_repeated_more_than_three_times(number_one, last_number) == false) || i == 0
					number_one.increment_sequence_times
					sum = sum + number_one.value
					last_number = number_one.value
					i = i + 1
				end	
				number_ten.default_sequence_times
			end
			if coin.eql?("prok")
				if number_five.value > last_number 
					sum = number_five.value - last_number
				end
				if number_five.value <= last_number
					sum = sum + number_five.value
				end
				last_number = number_five.value
				number_one.default_sequence_times
				number_ten.default_sequence_times
			end
			if coin.eql?("pish")	
				if is_number_repeated_more_than_three_times(number_ten, last_number)
					raise SequenceNumberError.new
				end
				if (is_number_repeated_more_than_three_times(number_ten, last_number) == false) || i == 0
					number_ten.increment_sequence_times
					sum = sum + number_ten.value
					last_number = number_ten.value
					i = i + 1
				end	
				number_one.default_sequence_times
			end
			if coin.eql?("tegj")
				if number_fifty.value > last_number 
					sum = number_fifty.value - last_number
				end
				if number_fifty.value <= last_number
					sum = sum + number_fifty.value
				end
				last_number = number_fifty.value
				number_one.default_sequence_times
				number_ten.default_sequence_times
			end
			if coin.eql?("Silver")
				# contains metal change value
				# glob = 1
				# prok = 2
				# pish = 3
				# tegj = 4
				# Glob 1 * Glob 1 * Silver = 34
				# Glob 1 * prok 2 * Silver = 68
 				sum = sum * 34
			end
			if coin.eql?("Gold")
				#glob 1 * prok  2 * Gold = 57800
				#57800/2
				#Gold =  28900
			end
			if coin.eql?("Iron")
				#glob 1 * prok 2 * Iron = 782
				#782/2
				#pish 1 * pish 10 * Iron 391 = 3910
				#Iron 391
			end
		}
		result = sum.to_s
		return result
	end

	def self.is_number_repeated_more_than_three_times(number, last_number)
		if last_number == number.value && number.sequence_times > 2
			return true
		end
		return false
	end

end