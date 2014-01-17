class CreatePokedexLists < ActiveRecord::Migration
  def change
    create_table :pokedex_lists do |t|
      t.string :name
      t.integer :index
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
