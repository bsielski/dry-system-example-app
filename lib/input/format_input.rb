module Input
  class FormatInput
    def call(raw_input)
      splitted = raw_input.strip.split
      return "_ 0" if splitted.empty?
      if splitted.length == 1
        if splitted.first[0].match?(/\d/)
          return (["_ "] + splitted).join
        else
          return "#{splitted.first[0]} #{splitted.first[1..-1]}"
        end
      else
        return splitted.join(" ")
      end
    end
  end
end
