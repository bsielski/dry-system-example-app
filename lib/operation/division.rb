require "bigdecimal"
module Operation
  class Division
    def call(a, b)
      BigDecimal(a) / BigDecimal(b)
    end
  end
end
