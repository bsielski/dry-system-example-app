require_relative "../../lib/operation/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Operation::Reset do
  subject {
    described_class.new
  }

  scenarios = [
    { a: "0",        b: "0",     result: BigDecimal("0") },
    { a: "-2.999",   b: "-1",   result: BigDecimal("-1") },
    { a: "2",        b: "-1",    result: BigDecimal("-1") },
    { a: "0.000003", b: "1000", result: BigDecimal("1000") },
    { a: "-92.933",  b: "0",     result: BigDecimal("0") },
  ]

  scenarios.each do |scenario|
    it "returns correct result" do
      expect(subject.call(scenario[:a], scenario[:b])).to eq scenario[:result]
    end
  end
end
