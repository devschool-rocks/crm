ActiveAdmin.register Student do
  menu priority: 2
  permit_params :first_name, :last_name, :email, :slack_name,
    :birthday, :enrolled_on, :instructor_id, :size_id, :gender_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


end
