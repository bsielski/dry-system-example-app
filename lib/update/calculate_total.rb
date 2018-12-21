require "bsflow/combine"
require_relative "../../system/import"

module Update
  class CalculateTotal < BSFlow::Combine
    include Import.args[
              "update.get_operation",
              "update.get_operand_a", "update.get_operand_b",
              "update.do_operation"
            ]
  end
end
