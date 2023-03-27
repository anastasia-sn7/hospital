class CreateRepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :repartments do |t|
      t.integer :repartment_id
      t.string :name
      t.string :block
      t.references :clinic, null: false, foreign_key: true

      t.timestamps
    end
    add_index :repartments, :repartment_id
  end
end
