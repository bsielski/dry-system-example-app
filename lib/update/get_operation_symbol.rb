require "bsflow/square_brackets_adapter"
require_relative "../../system/import"

module Update
  class GetOperationSymbol < BSFlow::SquareBracketsAdapter
     include Import[map: "update.command_to_operation"]
  end
end
