ActiveAdmin.register Lead do
  menu priority: 1

  permit_params :name, :email, :source

  form partial: 'form'

  action_item :view, only: :show do
    link_to 'Add another', new_admin_lead_path
  end
end
