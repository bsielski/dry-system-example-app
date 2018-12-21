require_relative "../../lib/update/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Update::DoOperation do
  subject {
    described_class.new
  }

  def random_value
    rng = Random.new
    [
      rng.rand(-1000..1000),
      rng.rand(-1000.0..1000.0),
      (0..rng.rand(0..15)).map { (65 + rand(26)).chr }.join
    ]
  end

  let (:operation) { double("Operation") }
  let (:value_a)   {random_value }
  let (:value_b)   {random_value }
  let (:result)    {random_value }

  10.times do
    before do
      allow(operation).to receive(:call).with(value_a, value_b).and_return(result)
    end
    
    it "returns correct result" do
      expect(subject.call(operation, value_a, value_b)).to eq result
    end
  end
end
