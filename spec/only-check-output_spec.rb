require File.join(File.dirname(__FILE__), "helpers")
require "sensu/extensions/only-check-output"

describe "Sensu::Extension::OnlyCheckOutput" do
  include Helpers

  before do
    @extension = Sensu::Extension::OnlyCheckOutput.new
  end

  it "can run, returning only check output" do
    @extension.safe_run(event_template) do |output, status|
      expect(output).to eq("WARNING")
      expect(status).to eq(0)
    end
  end
end
