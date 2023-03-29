class CreatePacients < ActiveRecord::Migration[7.0]
  def change
    create_table :pacients do |t|
      t.integer :pacient_id
      t.string :name
      t.integer :age
      t.string :diagnosis

      t.timestamps
    end
    add_index :pacients, :pacient_id
  end
end
