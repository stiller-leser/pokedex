require 'spec_helper'

describe "pokedex_lists/index" do
  before(:each) do
    assign(:pokedex_lists, [
      stub_model(PokedexList,
        :name => "Name",
        :index => 1,
        :weight => 2,
        :height => 3
      ),
      stub_model(PokedexList,
        :name => "Name",
        :index => 1,
        :weight => 2,
        :height => 3
      )
    ])
  end

  it "renders a list of pokedex_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
