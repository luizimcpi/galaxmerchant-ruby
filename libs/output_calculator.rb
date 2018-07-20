class Calculator
	def sum_coin_symbols(coin_array)
		result = ""
		sum = 0
		coin_array.each { |coin|
			if coin.eql?("glob")
				sum = sum + 1
			end
			if coin.eql?("prok")
				sum = sum + 5
			end
			if coin.eql?("pish")
				sum = sum + 10
			end
			if coin.eql?("tegj")
				sum = sum + 50
			end
		}
		result = sum.to_s
		return result
	end
end