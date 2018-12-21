require_relative "../../lib/operation/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Operation::Division do
  subject {
    described_class.new
  }

  scenarios = [
    { a: "-2.999",   b: "-1",   result: BigDecimal("2.999") },
    { a: "2",        b: "-1",    result: BigDecimal("-2") },
    { a: "0.000003", b: "1000", result: BigDecimal("0.000000003") },
    { a: "-92",  b: "2",     result: BigDecimal("-46") },
  ]

  scenarios.each do |scenario|
    it "returns correct result" do
      expect(subject.call(scenario[:a], scenario[:b])).to eq scenario[:result]
    end
  end
end
