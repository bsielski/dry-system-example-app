require "bsflow/drop_args"
require_relative "../../system/import"

module Input
  class DropArg < BSFlow::DropArgs
    include Import[proc: "input.get_input"]
  end
end
