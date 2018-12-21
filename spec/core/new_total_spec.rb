require_relative "../../lib/core/#{File.basename(__FILE__).chomp("_spec.rb")}"

RSpec.describe Core::NewTotal do
  subject {
    described_class.new
  }

  let (:new_total) {
    [
      {
        result: "0"
      }
    ]
  }

  it "returns fresh new total" do
    expect(subject.call).to eq new_total
  end
end
