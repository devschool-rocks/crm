ActiveAdmin.register Shirt do
  menu parent: "Shipments"

  permit_params :brand, :style, :color, :size, :qty, :gender_id

  action_item :view, only: :show do
    link_to 'Add another', new_admin_shirt_path
  end
end
