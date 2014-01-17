require "spec_helper"

describe PokedexListsController do
  describe "routing" do

    it "routes to #index" do
      get("/pokedex_lists").should route_to("pokedex_lists#index")
    end

    it "routes to #new" do
      get("/pokedex_lists/new").should route_to("pokedex_lists#new")
    end

    it "routes to #show" do
      get("/pokedex_lists/1").should route_to("pokedex_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pokedex_lists/1/edit").should route_to("pokedex_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pokedex_lists").should route_to("pokedex_lists#create")
    end

    it "routes to #update" do
      put("/pokedex_lists/1").should route_to("pokedex_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pokedex_lists/1").should route_to("pokedex_lists#destroy", :id => "1")
    end

  end
end
