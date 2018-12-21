module Output
  class GetOutputData
    def call(logs)
      logs.last[:result] || logs[-2][:result]
    end
  end
end
