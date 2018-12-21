require "bsflow/pipeline"
require_relative "../../system/import"

module Output
  class PrepareOutput < BSFlow::Pipeline
    include Import.args[
              "output.get_output_data",
              "output.format_output",
              "output.finalize_format_output"
            ]
  end
end
