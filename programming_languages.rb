def reformat_languages(languages)
	new_languages = languages.values.map {|language| language}.inject(:merge).to_h
	new_languages.each do |new_language, details|
    binding.pry
		languages.each do |style, language|
			if details.has_key?(:style)
				new_languages[new_language][details][:style] << style.to_s
			else
				new_languages[new_language][details][:style] = style.to_s
			end
		end
	end
	new_languages
end

reformat_languages(languages)
