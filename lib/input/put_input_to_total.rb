module Input
  class PutInputToTotal

    def call(logs, input)
      last_log = logs.last || {}
      unless last_log[:operand]
        updated_log = last_log.merge(input)
        return(logs[0..-2] + [updated_log])
      else
        return(logs + [input])
      end
    end
  end
end
