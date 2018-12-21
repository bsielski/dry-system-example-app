module Update
  class GetOperationShortname

    def call(logs)
      logs.last[:command]
    end
  end
end
