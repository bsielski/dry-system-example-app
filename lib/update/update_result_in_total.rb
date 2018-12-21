require "bsflow/combine"
require_relative "../../system/import"

module Update
  class UpdateResultInTotal < BSFlow::Combine
    include Import.args[
              "update.self", "update.calculate_total",
              "update.put_result_to_total"
            ]
  end
end
