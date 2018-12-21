module Output
  class FormatOutput
    def call(raw)
      raw.to_f.to_s.chomp(".0")
    end
  end
end
