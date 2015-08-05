require('pry')

class String

  define_method(:title_case) do
    split_sentence = self.downcase.split
    output_sentence = []
    prepositions = ["and", "from", "the", "to", "on"]
    # names = ["Mcduff", "O'malley"]
    split_sentence.each do |word|
      if prepositions.include?(word)
        output_sentence.push(word)
      else
        output_sentence.push(word.capitalize())
      end
    end
    output_sentence[0].capitalize!()
    output_sentence.join(" ")
  end
end
