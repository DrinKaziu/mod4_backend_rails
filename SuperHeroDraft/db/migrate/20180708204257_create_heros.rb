class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :powerstats
      t.string :biography
      t.string :work
      t.string :connections
      t.string :image

      t.timestamps
    end
  end
end
