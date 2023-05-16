ActiveAdmin.register Doctor do
  permit_params :name, :experience_in_years, :repartment_id, :specialization_id

  config.remove_action_item(:destroy)
  index do
    selectable_column
    id_column
    column :name
    column :experience_in_years
    column :specialization_id do |doc|
      Specialization.find_by(id: doc.specialization_id).name
    end
    column :repartment_id do |doc|
      Repartment.find_by(id: doc.repartment_id).name
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :experience_in_years
      row :specialization_id do |doc|
        Specialization.find_by(id: doc.specialization_id).name
      end
      row :repartment_id do |doc|
            Repartment.find_by(id: doc.repartment_id).name
      end
      row :created_at
      row :updated_at
    end
  end

  filter :name
  filter :address
  filter :number
  filter :created_at
  filter :updated_at

  form do |f|
    f.semantic_errors # Show error messages on :base instead of each attribute

    f.inputs do
      f.input :name
      f.input :experience_in_years
      f.input :specialization_id, as: :select, collection: Specialization.all.map { |s| [s.name, s.id] }
      f.input :repartment_id, as: :select, collection: Repartment.all.map { |s| [s.name, s.id] }
    end
    f.actions # Add buttons to submit/save and cancel
  end
end