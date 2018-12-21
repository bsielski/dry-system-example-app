require_relative "../../lib/update/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Update::PutResultToTotal do
  subject {
    described_class.new
  }

  scenarios = [
    {
      number: "12",
      total_before: [],
      total_after: [
        { result: "12" }
      ]
    },
    {
      number: 0.12,
      total_before: [
        { result: 0, command: :-, operand: "what" }
      ],
      total_after: [
        { result: 0, command: :-, operand: "what" },
        { result: 0.12 },
      ]
    },
    {
      number: "lol",
      total_before: [
        { result: 0, command: "lol", operand: "what" },
        { result: 23 }
      ],
      total_after: [
        { result: 0, command: "lol", operand: "what" },
        { result: 23 },
        { result: "lol" }
      ]
    }
  ]

  scenarios.each do |scenario|
    it "adds result to total" do
      expect(subject.call(scenario[:total_before], scenario[:number])).to eq scenario[:total_after]
    end
  end
end
