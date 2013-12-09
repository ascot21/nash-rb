require 'spec_helper'

describe "logo_entries/new" do
  before(:each) do
    assign(:logo_entry, stub_model(LogoEntry).as_new_record)
  end

  it "renders new logo_entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logo_entries_path, "post" do
    end
  end
end
