class CreateMedcards < ActiveRecord::Migration[7.0]
  def change
    create_table :medcards do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end

    add_index :medcards, :medcard_id
  end
end
