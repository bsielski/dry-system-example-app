require_relative "../../lib/input/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Input::PutInputToTotal do
  subject {
    described_class.new
  }

  scenarios = [
    {
      input: { command: :"+", operand: "12" },
      total_before: [],
      total_after: [
        { command: :+, operand: "12" }
      ]
    },
    {
      input: { command: :"-", operand: "0.12" },
      total_before: [
        { result: 0, command: :+, operand: "what" }
      ],
      total_after: [
        { result: 0, command: :+, operand: "what" },
        { command: :"-", operand: "0.12" },
      ]
    },
    {
      input: { command: :"lol", operand: "lol" },
      total_before: [
        { result: 0, command: :+, operand: "what" },
        { result: 23 }
      ],
      total_after: [
        { result: 0, command: :+, operand: "what" },
        { result: 23, command: :"lol", operand: "lol" }
      ]
    }
  ]

  scenarios.each do |scenario|
    context "raw_input: #{scenario[:input].inspect}" do
      it "returns #{scenario[:total_after].inspect}" do
        expect(subject.call(scenario[:total_before], scenario[:input])).to eq scenario[:total_after]
      end
    end
  end
end
