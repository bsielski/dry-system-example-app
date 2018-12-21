module Update
  class CommandToOperation
    def initialize(
          hash={
            :+ => "operation.addition",
            :- => "operation.subtraction",
            :* => "operation.multiplication",
            :/ => "operation.division",
            :_ => "operation.reset"
          }
        )
      @data = hash
    end

    def [](k)
      @data[k]
    end
  end
end
