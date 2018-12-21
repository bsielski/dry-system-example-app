require_relative "../../lib/input/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Input::InterpretInput do
  subject {
    described_class.new
  }

  scenarios = [
    { input: "+ 12",   interpreted_input: {command: :"+", operand: "12"}},
    { input: "- 12",   interpreted_input: {command: :"-", operand: "12"}},
    { input: "* 12",   interpreted_input: {command: :"*", operand: "12"}},
    { input: "/ 12",   interpreted_input: {command: :"/", operand: "12"}},

    { input: "+ 10.2",  interpreted_input: {command: :"+", operand: "10.2"}},
    { input: "+ 0.120", interpreted_input: {command: :"+", operand: "0.120"}},
    { input: "+ 12.00", interpreted_input: {command: :"+", operand: "12.00"}},
  ]

  scenarios.each do |scenario|
    it "returns #{scenario[:interpreted_input].inspect}" do
      expect(subject.call(scenario[:input])).to eq scenario[:interpreted_input]
    end
  end
end
