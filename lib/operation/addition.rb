require "bigdecimal"
module Operation
  class Addition
    def call(a, b)
      BigDecimal(a) + BigDecimal(b)
    end
  end
end
