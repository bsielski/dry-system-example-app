require_relative "../../lib/update/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Update::GetOperationShortname do
  subject(:get_operation) {
    described_class.new
  }

  scenarios = [
    {
      total: [
        { result: 0, command: :+ }
      ],
      shortname: :+,
    },
    {
      total: [
        { result: 0, command: :+, operand: "what" },
        { result: 23, command: :lol }
      ],
      shortname: :lol,
    },
    {
      total: [
        { result: 0, command: :+, operand: "what" },
        { result: 23, command: :lol, operand: 333 },
        { result: 4, command: "omg" }
      ],
      shortname: "omg",
    }
  ]

  scenarios.each do |scenario|
    it "returns proper value" do
      expect(get_operation.call(scenario[:total])).to eq scenario[:shortname]
    end
  end
end
