require "bigdecimal"
module Operation
  class Reset
    def call(a, b)
      BigDecimal(b)
    end
  end
end
