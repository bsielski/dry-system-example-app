require "bsflow/combine"
require_relative "../../system/import"

module Input
  class UpdateInputInTotal < BSFlow::Combine
    include Import.args[
              "input.self", "input.drop_arg",
              "input.put_input_to_total"
            ]

  end
end
