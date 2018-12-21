require "bsflow/pipeline"
require_relative "../../system/import"

module Core
  class Calculation < BSFlow::Pipeline
    include Import.args["core.new_total", "core.calculate_forever"]
  end
end
