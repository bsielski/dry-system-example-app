require "bsflow/pass"
require_relative "../../system/import"

module Core
  class SendTotalToPrinter < BSFlow::Pass
    include Import[proc: "output.print_result"]
  end
end
