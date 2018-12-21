require "bsflow/stdin_adapter"
require_relative "../../system/import"

module Input
  class StdinAdapter < BSFlow::StdinAdapter
    include Import[stdin: :stdin]
  end
end
