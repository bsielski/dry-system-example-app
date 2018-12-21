require "bigdecimal"
module Operation
  class Subtraction
    def call(a, b)
      BigDecimal(a) - BigDecimal(b)
    end
  end
end
