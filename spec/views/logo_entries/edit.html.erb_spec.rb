require 'spec_helper'

describe "logo_entries/edit" do
  before(:each) do
    @logo_entry = assign(:logo_entry, stub_model(LogoEntry))
  end

  it "renders the edit logo_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logo_entry_path(@logo_entry), "post" do
    end
  end
end
