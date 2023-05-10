ActiveAdmin.register Clinic do
  permit_params :name, :address, :number

  config.remove_action_item(:destroy)
  index do
    selectable_column
    id_column
    column :name
    column :address
    column :number
    actions
  end

  show do
    attributes_table do
      row :name
      row :address
      row :number
      row :created_at
      row :updated_at
    end
  end

  filter :name
  filter :address
  filter :number

  form do |f|
    f.semantic_errors # Show error messages on :base instead of each attribute

    f.inputs do
      f.input :name
      f.input :address
      f.input :number
    end
    f.actions # Add buttons to submit/save and cancel
  end
end
