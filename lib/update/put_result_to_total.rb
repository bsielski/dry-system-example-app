module Update
  class PutResultToTotal

    def call(logs, result)
      last_log = logs.last || {}
      unless last_log[:result]
        updated_log = last_log.merge({result: result})
        return(logs[0..-2] + [updated_log])
      else
        return(logs + [{result: result}])
      end
    end
  end
end
