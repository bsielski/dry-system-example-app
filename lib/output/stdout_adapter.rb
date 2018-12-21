require "bsflow/stdout_adapter"
require_relative "../../system/import"

module Output
  class StdoutAdapter < BSFlow::StdoutAdapter
    include Import[stdout: :stdout]
  end
end
