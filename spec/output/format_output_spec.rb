require_relative "../../lib/output/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Output::FormatOutput do
  subject {
    described_class.new
  }

  scenarios = [
    { raw_output: "1.3e-1", formatted_output: "0.13" },
    { raw_output: "103.342e-1", formatted_output: "10.3342" },
    { raw_output: "0.1e1", formatted_output: "1" },
    { raw_output: "-0.5e1", formatted_output: "-5" },
  ]

  scenarios.each do |scenario|
    it "returns #{scenario[:formatted_output].inspect}" do
      expect(subject.call(scenario[:raw_output])).to eq scenario[:formatted_output]
    end
  end
end
