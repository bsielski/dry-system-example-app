require "bsflow/pipeline"
require_relative "../../system/import"

module Input
  class GetInput < BSFlow::Pipeline
    include Import.args["input.stdin_adapter", "input.format_input", "input.interpret_input"]
  end
end
