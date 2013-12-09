require 'spec_helper'

describe "logo_entries/show" do
  before(:each) do
    @logo_entry = assign(:logo_entry, stub_model(LogoEntry))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
