class AddFieldsToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :type, :string
    add_column :clinics, :city, :string
    add_column :clinics, :RatingMortality, :float
  end
end
