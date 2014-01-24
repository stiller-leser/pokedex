class AddTypeIdToPokedexList < ActiveRecord::Migration
  def change
    add_column :pokedex_lists, :type_id, :integer
  end
end
