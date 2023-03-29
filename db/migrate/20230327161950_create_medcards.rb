class CreateMedcards < ActiveRecord::Migration[7.0]
  def change
    create_table :medcards do |t|
      t.integer :medcard_id
      t.string :name
      t.integer :year
      t.references :pacient, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
    add_index :medcards, :medcard_id
  end
end
