require 'spec_helper'

describe "types/edit" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :Main => "MyString",
      :Secondary => "MyString"
    ))
  end

  it "renders the edit type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", type_path(@type), "post" do
      assert_select "input#type_Main[name=?]", "type[Main]"
      assert_select "input#type_Secondary[name=?]", "type[Secondary]"
    end
  end
end
