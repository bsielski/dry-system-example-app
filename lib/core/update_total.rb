require "bsflow/pipeline"
require_relative "../../system/import"

module Core
  class UpdateTotal < BSFlow::Pipeline
    include Import.args["input.update_input_in_total", "update.update_result_in_total"]
  end
end
