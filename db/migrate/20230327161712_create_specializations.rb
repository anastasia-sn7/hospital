class CreateSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :specializations do |t|
      t.integer :specialization_id
      t.string :name

      t.timestamps
    end
    add_index :specializations, :specialization_id
  end
end
