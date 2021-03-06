require 'spec_helper'

describe "PokedexLists" do
 # this is an example for testing a rails app
 # with rspec and capybara.
 # see
 # http://rubydoc.info/github/jnicklas/capybara/master

  describe "sort" do
    before(:each) do
      [5,2,1,3,4].each do |i|
         create(:pokedex_list, name: "Pokemon No #{i}")
      end
    end
    it "shows the pokemons in the correct descending order" do
        visit sort_path(sort: 'desc')
        #save_and_open_page

        # how to check for order...
        # http://launchware.com/articles/acceptance-testing-asserting-sort-order
        'Pokemon No 5'.should appear_before('Pokemon No 4')
        'Pokemon No 4'.should appear_before('Pokemon No 3')
        'Pokemon No 3'.should appear_before('Pokemon No 2')
        'Pokemon No 2'.should appear_before('Pokemon No 1')
    end

    it "shows the pokemons in the correct ascending order" do
        visit sort_path(sort: 'asc')
        'Pokemon No 1'.should appear_before('Pokemon No 2')
        'Pokemon No 2'.should appear_before('Pokemon No 3')
        'Pokemon No 3'.should appear_before('Pokemon No 4')
        'Pokemon No 4'.should appear_before('Pokemon No 5')
    end

    it "count the correct number of pokemon in the index" do
      visit count_path
      
      '5'.should appear_before I18n.t('count.b')
    end
  end
end