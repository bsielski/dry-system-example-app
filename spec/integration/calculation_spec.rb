require_relative "../../system/app"
require 'dry/container/stub'
App.enable_stubs!

RSpec.describe "Calculation" do

  subject {
    App["core.calculation"]
  }

  let(:fake_input){double "Fake Input"}
  let(:fake_output){double "Fake Output"}
  let(:fake_end_loop_condition){double "Fake Condition"}

  let(:inputs){
    ["2", "+2"]
  }
  let(:end_result){
    [
      {:command=>:_, :operand=>"2", :result=>"0"},
      {:command=>:+, :operand=>"2", :result=>0.2e1},
      {:result=>0.4e1}
    ]
  }
  let(:end_loop_conditions){
    [false, false, true]
  }

  before do
    App.stub("input.stdin_adapter", fake_input)
    App.stub("output.stdout_adapter", fake_output)
    App.stub("core.false", fake_end_loop_condition)

    allow(fake_input)
      .to receive(:call).with(no_args)
            .and_return(*inputs)
    allow(fake_output)
      .to receive(:call)
    allow(fake_end_loop_condition)
      .to receive(:call)
            .and_return(*end_loop_conditions)
  end

  it "returns correct total" do
    expect(subject.call).to eq end_result
  end

  App.unstub("input.stdin_adapter")
  App.unstub("output.stdout_adapter")
  App.unstub("core.false")
end
