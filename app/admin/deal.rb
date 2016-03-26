ActiveAdmin.register Deal do
  menu priority: 2

  permit_params :student_id, :lead_id, :price, :offered_on, :closed_on

  index do
    column :student
    column :lead
    column :price
    column :offered_on
    column :closed_on
    actions
  end


  form do |f|
    f.inputs "Details" do
      f.input :lead
      f.input :price
      f.input :offered_on
      f.input :closed_on
    end
  end


# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
