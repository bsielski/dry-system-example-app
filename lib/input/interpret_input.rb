module Input
  class InterpretInput

    def call(input)
      raw_items = input.split
      {
        command: raw_items[0].to_sym,
        operand: raw_items[1]
      }
    end
  end
end
