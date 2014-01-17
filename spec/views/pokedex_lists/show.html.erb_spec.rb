require 'spec_helper'

describe "pokedex_lists/show" do
  before(:each) do
    @pokedex_list = assign(:pokedex_list, stub_model(PokedexList,
      :name => "Name",
      :index => 1,
      :weight => 2,
      :height => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
