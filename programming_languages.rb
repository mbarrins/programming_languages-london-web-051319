require "pry"

def reformat_languages(languages)
	new_languages = languages.values.map {|language| language}.inject(:merge).to_h

	new_languages.each do |new_language, details|
		languages.map{|style, lang| [style, lang.keys]}.to_h.each do |new_style, languages|
      if languages.include?(new_language)
        details.has_key?(:style) ? details[:style] << new_style : details[:style] = [new_style]
      end
		end
	end
	new_languages
end

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }
#
# puts reformat_languages(languages)
