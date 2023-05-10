ActiveAdmin.register Doctor do
  permit_params :name, :experience_in_years, :repartment_id, :specialization_id

  config.remove_action_item(:destroy)
  index do
    selectable_column
    id_column
    column :name
    column :experience_in_years
    column :specialization_id
    column :repartment_id
    actions
  end

  show do
    attributes_table do
      row :name
      row :experience_in_years
      row :specialization_id
      row :repartment_id
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
      f.input :specialization_id
      f.input :repartment_id
    end
    f.actions # Add buttons to submit/save and cancel
  end

end