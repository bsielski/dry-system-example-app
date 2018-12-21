require_relative "../../lib/input/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Input::FormatInput do
  subject {
    described_class.new
  }

  scenarios = [
    { raw_input: "+   12",  formatted_input: "+ 12" },
    { raw_input: " +  12",  formatted_input: "+ 12" },
    { raw_input: "  +  12  ",  formatted_input: "+ 12" },
    { raw_input: "+ 12 ",  formatted_input: "+ 12" },
    { raw_input: "+ 1.25",  formatted_input: "+ 1.25" },
    { raw_input: "- 12",  formatted_input: "- 12" },
    { raw_input: "/ 12",  formatted_input: "/ 12" },
    { raw_input: "* 12",  formatted_input: "* 12" },
    { raw_input: "   12  ",  formatted_input: "_ 12" },
    { raw_input: " 0.12",  formatted_input: "_ 0.12" },
    { raw_input: " +55 ",  formatted_input: "+ 55" },
    { raw_input: " -0.55 ",  formatted_input: "- 0.55" },
    { raw_input: " /245645.666 ",  formatted_input: "/ 245645.666" },
    { raw_input: " *12 ",  formatted_input: "* 12" },
    { raw_input: "",  formatted_input: "_ 0" },
    { raw_input: "      ",  formatted_input: "_ 0" },
    
  ]

  scenarios.each do |scenario|
    it "returns #{scenario[:formatted_input].inspect}" do
      expect(subject.call(scenario[:raw_input])).to eq scenario[:formatted_input]
    end
  end
end
