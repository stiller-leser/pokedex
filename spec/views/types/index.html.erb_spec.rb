require 'spec_helper'

describe "types/index" do
  before(:each) do
    assign(:types, [
      stub_model(Type,
        :Main => "Main",
        :Secondary => "Secondary"
      ),
      stub_model(Type,
        :Main => "Main",
        :Secondary => "Secondary"
      )
    ])
  end

  it "renders a list of types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Main".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary".to_s, :count => 2
  end
end
