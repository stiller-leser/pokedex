require 'spec_helper'

describe "pokedex_lists/edit" do
  before(:each) do
    @pokedex_list = assign(:pokedex_list, stub_model(PokedexList,
      :name => "MyString",
      :index => 1,
      :weight => 1,
      :height => 1
    ))
  end

  it "renders the edit pokedex_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pokedex_list_path(@pokedex_list), "post" do
      assert_select "input#pokedex_list_name[name=?]", "pokedex_list[name]"
      assert_select "input#pokedex_list_index[name=?]", "pokedex_list[index]"
      assert_select "input#pokedex_list_weight[name=?]", "pokedex_list[weight]"
      assert_select "input#pokedex_list_height[name=?]", "pokedex_list[height]"
    end
  end
end
