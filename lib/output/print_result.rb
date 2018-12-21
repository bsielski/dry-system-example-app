require "bsflow/pipeline"
require_relative "../../system/import"

module Output
  class PrintResult < BSFlow::Pipeline
    include Import.args["output.prepare_output", "output.stdout_adapter"]
  end
end
