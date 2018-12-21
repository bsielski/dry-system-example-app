module Update
  class DoOperation
    def call(operation, value_a, value_b)
      operation.call(value_a, value_b)
    end
  end
end
