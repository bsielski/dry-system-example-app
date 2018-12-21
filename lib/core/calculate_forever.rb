require "bsflow/until_true_loop"
require_relative "../../system/import"

module Core
  class CalculateForever < BSFlow::UntilTrueLoop
    include Import[
              loop_proc: "core.calculate_cycle",
              condition_proc: "core.false"
            ]
  end
end
