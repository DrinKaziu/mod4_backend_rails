class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|

      t.timestamps
    end
  end
end
