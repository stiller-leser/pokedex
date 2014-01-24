require 'spec_helper'

describe "types/show" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :Main => "Main",
      :Secondary => "Secondary"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Main/)
    rendered.should match(/Secondary/)
  end
end
