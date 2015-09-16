lines = ["Gavin = Awesome", "Jason = Also Awesome"]

search = "son"

# Lines -> split -> hashes -> selected

# Transform lines into word and definition
split_lines = lines.
      map { |line| line.split(" = ") }

# Transform words and definition arrays into hash
array_of_hashes = split_lines.map do |word, definition|
                    { word: word, definition: definition}
                  end

# Select out only the hashes that match
matches = array_of_hashes.select do |hash|
            hash[:word].include?(search)
          end

p matches

# Another way of doing this

# DEBUGGING!!!
p ["split_lines", split_lines]
matching_lines = split_lines.
           select { |word, definition|
              word.downcase.include?(search) }

p ["matching_lines", matching_lines]

definitions =
      matching_lines.
      select { |(word, definition)| word.downcase.include?(search) }.
      map do |(word, definition)|
        {
          word: word,
          definition: definition
        }
      end

p definitions
