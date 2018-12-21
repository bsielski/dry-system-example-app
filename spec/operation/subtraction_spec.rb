require_relative "../../lib/operation/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Operation::Subtraction do
  subject {
    described_class.new
  }

  scenarios = [
    { a: "0", b: "0", result:            BigDecimal("0") },
    { a: "2.999", b: "1", result:       BigDecimal("1.999") },
    { a: "-46", b: "-112", result:        BigDecimal("66") },
    { a: "2", b: "1.9999999999999999999", result: BigDecimal("0.0000000000000000001") },
    { a: "1.2000003", b: "1.2", result:  BigDecimal("0.0000003") },
    { a: "-92.933", b: "-92.933", result:   BigDecimal("0.00") },
  ]

  scenarios.each do |scenario|
    it "returns correct result" do
      expect(subject.call(scenario[:a], scenario[:b])).to eq scenario[:result]
    end
  end
end
