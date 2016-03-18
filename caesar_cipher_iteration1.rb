# Caesar Cipher program, iteration 1

def solve_cipher(input)

	shift = -1
	
	# Divide string into separate characters and save in array
	array_split_secret_word = input.split("")

	# Converts inside array, characters into integers + shift
	array_integer_secret_word = array_split_secret_word.collect { |chr| chr.ord + shift }

	# Alternative way. Converts inside array, integers into characters
	#array_chr_secret_word = array_integer_secret_word.collect { |item| item.chr }

	#final_word = array_chr_secret_word.join

	temp_result = 0
	final_result = ""

	array_integer_secret_word.each do |num|
		if num < 97
			temp_result = temp_result + (num + 26)

		elsif num > 122
			temp_result = temp_result + (num - 26)

		else
			temp_result = num
		end

		final_result = final_result + (temp_result.chr)
	end

	puts final_result
end

puts "\nGive me the secret word of Cleopatra ;)"

secret_word = gets.chomp

puts "\nRemember the shift code you settled with her for encrypting is +1."

solve_cipher(secret_word)