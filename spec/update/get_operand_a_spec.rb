require_relative "../../lib/update/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Update::GetOperandA do
  subject { described_class.new }

  scenarios = [
    {
      total: [
        { result: 0, command: :+ }
      ],
      operand: 0
    },
    {
      total: [
        { result: "0", command: :+, operand: "what" },
        { result: "23", command: :lol }
      ],
      operand: "23"
    },
    {
      total: [
        { result: 0, command: :+, operand: "what" },
        { result: 23, command: :lol, operand: 333 },
        { result: 4, command: "omg" }
      ],
      operand: 4
    }
  ]

  scenarios.each do |scenario|
    it "returns proper value" do
      expect(subject.call(scenario[:total])).to eq scenario[:operand]
    end
  end
end
