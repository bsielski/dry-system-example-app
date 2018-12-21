require_relative "../../lib/operation/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Operation::Addition do
  subject {
    described_class.new
  }

  scenarios = [
    { a: "0", b: "0", result:            BigDecimal("0") },
    { a: "-1", b: "3.999", result:       BigDecimal("2.999") },
    { a: "-112", b: "66", result:        BigDecimal("-46") },
    { a: "1.9999999999999999999", b: "0.0000000000000000001", result: BigDecimal("2") },
    { a: "1.2", b: "0.0000003", result:  BigDecimal("1.2000003") },
    { a: "-92.933", b: "0.00", result:   BigDecimal("-92.933") },
  ]

  scenarios.each do |scenario|
    it "returns correct result" do
      expect(subject.call(scenario[:a], scenario[:b])).to eq scenario[:result]
    end
  end
end
