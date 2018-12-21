require "bigdecimal"
module Operation
  class Multiplication
    def call(a, b)
      BigDecimal(a) * BigDecimal(b)
    end
  end
end
