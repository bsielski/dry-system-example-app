require "bsflow/pipeline"
require_relative "../../system/import"

module Update
  class GetOperation < BSFlow::Pipeline
    include Import.args[
              "update.get_operation_shortname",
              "update.get_operation_symbol",
              "update.get_operation_from_container"
            ]
  end
end
