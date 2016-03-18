# Caesar Cipher program, iteration 3

def solve_cipher(stc, shift)

	# Convert cipher shift code to decipher shift code
	shift = shift * (-1)
	
	# Divide string into separate characters and save in array
	array_split_secret_stc = stc.split("")
	# puts array_split_secret_stc

	# Converts inside array, characters into integers + shift
	array_integer_secret_stc = array_split_secret_stc.collect {
		|chr| num = chr.ord

		if num == 32
			num = num

		else
			num = num + shift
		end
	}

	# Alternative way. Converts inside array, integers into characters
	# array_chr_secret_word = array_integer_secret_stc.collect { |item| item.chr }

	# final_word = array_chr_secret_word.join

	temp_result = 0
	final_result = ""

	array_integer_secret_stc.each do |num|
		if num == 32
			temp_result = temp_result + num

		elsif num < 97
			temp_result = temp_result + (num + 26)

		elsif num > 122
			temp_result = temp_result + (num - 26)

		else
			temp_result = num
		end

		final_result = final_result + (temp_result.chr)
	end

	puts "\n" + final_result
end

puts "\nGive me the secret sentence of Cleopatra ;)"

secret_stc = gets.chomp

puts "\nRemember you use with your lover a cipher shift code of 3, so by default I'm going to use 
-3 to decipher this message.\n\nDo you want to use the default value, 1 (yes) or 0 (no)?"

answer = gets.chomp.to_i

if answer == 1
	secret_shift = 3
	solve_cipher(secret_stc, secret_shift)

elsif answer == 0
	puts "\nOk, so give me a new value."
	secret_shift = gets.chomp.to_i
	solve_cipher(secret_stc, secret_shift)

else
	puts "\nI told you to answer 1 (yes) or 0 (no)!"
end