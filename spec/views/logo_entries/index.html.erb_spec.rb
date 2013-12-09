require 'spec_helper'

describe "logo_entries/index" do
  before(:each) do
    assign(:logo_entries, [
      stub_model(LogoEntry),
      stub_model(LogoEntry)
    ])
  end

  it "renders a list of logo_entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
