require "bsflow/pipeline"
require_relative "../../system/import"

module Core
  class CalculateCycle < BSFlow::Pipeline
    include Import.args["core.update_total", "core.send_total_to_printer"]
  end
end
