class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialization
      t.integer :experience_in_years

      t.references :repartment, null: false, foreign_key: true

      t.timestamps
    end

    add_index :doctors, :doctor_id
  end
end
