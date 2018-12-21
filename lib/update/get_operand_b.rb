module Update
  class GetOperandB
    def call(logs)
      logs.last[:operand] || logs[-2][:operand]
    end
  end
end
