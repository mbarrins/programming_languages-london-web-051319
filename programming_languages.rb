require "pry"

def reformat_languages(languages)
	new_languages = languages.values.map {|language| language}.inject(:merge).to_h
	new_languages.each do |new_language, details|
    binding.pry
		languages.each do |new_style, language|
			if details.has_key?(:style)
				new_languages[new_language][details][:style] << new_style.to_s
			else
				new_languages[new_language][details][:style] = new_style.to_s
			end
		end
	end
	new_languages
end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

reformat_languages(languages)
