ActiveAdmin.register Pacient do
  permit_params :name, :age, :diagnosis

  config.remove_action_item(:destroy)
  index do
    selectable_column
    id_column
    column :name
    column :age
    column :diagnosis
    actions
  end

  show do
    attributes_table do
      row :name
      row :age
      row :diagnosis
      row :created_at
      row :updated_at
    end
  end

  filter :name
  filter :age
  filter :diagnosis

  form do |f|
    f.semantic_errors # Show error messages on :base instead of each attribute

    f.inputs do
      f.input :name
      f.input :age
      f.input :diagnosis
    end
    f.actions # Add buttons to submit/save and cancel
  end
end
