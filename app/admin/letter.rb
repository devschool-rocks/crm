ActiveAdmin.register Letter do
  menu parent: "Shipments"

  permit_params :label, :contents

  action_item :view, only: :show do
    link_to 'Add another', new_admin_letter_path
  end
end
