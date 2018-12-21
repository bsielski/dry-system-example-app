module Update
  class GetOperandA
    def call(logs)
      logs.last[:result]
    end
  end
end
