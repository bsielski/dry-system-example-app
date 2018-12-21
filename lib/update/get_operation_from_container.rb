require "bsflow/square_brackets_adapter"
require_relative "../../system/import"
require_relative "../../system/app"

module Update
  class GetOperationFromContainer < BSFlow::SquareBracketsAdapter
    include Import[map: :app ]
  end
end
