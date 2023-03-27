class CreateClinics < ActiveRecord::Migration[7.0]
  def change
    create_table :clinics do |t|
      t.integer :clinic_id
      t.string :name
      t.string :address
      t.integer :number

      t.timestamps
    end
    add_index :clinics, :clinic_id
  end
end
