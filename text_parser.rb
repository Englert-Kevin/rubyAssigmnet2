

text_for_parse = "My Kevin is Kevin. is my my"

def text_parser(original_text)

	def first_pass(to_be_parsed)
		bad_keys = "!?,.:;\""
		stripped_text = to_be_parsed.delete(bad_keys)
		downcased_text = stripped_text.downcase
		parsed_text = downcased_text.split(" ")
		parsed_text
	end

	def hash_builder(parsed_text)
		hash_values = Hash.new()
		parsed_text.each do |word|
			if hash_values[word]
				hash_values[word] += 1
			else
				hash_values[word] = 1
			end
		end
		hash_values
	end

	def return_max(built_hash)
		hash_keys = built_hash.keys
		max_key = hash_keys[0]
		hash_keys.each do |key|
			if built_hash[key] > built_hash[max_key]
				max_key = key
			end
		end
		max_key
	end

return_max(hash_builder(first_pass(original_text)))

end

output = text_parser(text_for_parse)
puts output

