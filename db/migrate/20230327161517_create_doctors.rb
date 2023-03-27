class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.integer :doctor_id
      t.string :name
      t.integer :experience_in_years
      t.references :repartment, null: false, foreign_key: true
      t.references :specialization, null: false, foreign_key: true

      t.timestamps
    end
    add_index :doctors, :doctor_id
  end
end
