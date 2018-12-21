require_relative "../../lib/output/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Output::GetOutputData do
  subject {
    described_class.new
  }

  scenarios = [
    {
      total: [
        { result: 0, command: :+, operand: "what" },
        { result: 23, command: :"lol", operand: "lol" }
      ],
      output: 23
    },
    {
      total: [
        { result: 0, command: :+, operand: "what" },
        { command: :"-", operand: "0.12" },
      ],
      output: 0
    }
  ]

  scenarios.each do |scenario|
    it "returns #{scenario[:output].inspect}" do
      expect(subject.call(scenario[:total])).to eq scenario[:output]
    end
  end
end
