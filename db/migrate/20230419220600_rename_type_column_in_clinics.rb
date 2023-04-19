class RenameTypeColumnInClinics < ActiveRecord::Migration[7.0]
  def change
    rename_column :clinics, :type, :clinic_type
  end
end
