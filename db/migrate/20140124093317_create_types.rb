class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :Main
      t.string :Secondary

      t.timestamps
    end
  end
end
