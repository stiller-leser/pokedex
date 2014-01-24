require 'spec_helper'

describe "types/new" do
  before(:each) do
    assign(:type, stub_model(Type,
      :Main => "MyString",
      :Secondary => "MyString"
    ).as_new_record)
  end

  it "renders new type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", types_path, "post" do
      assert_select "input#type_Main[name=?]", "type[Main]"
      assert_select "input#type_Secondary[name=?]", "type[Secondary]"
    end
  end
end
