ActiveAdmin.register Student do
  menu priority: 2
  permit_params :first_name, :last_name, :email, :slack_name,
    :birthday, :enrolled_on, :instructor_id, :size_id, :gender_id

  index do
    column :name
    column :slack_name
    column :email
    column :birthday do |student|
      student.birthday.strftime("%B %e")
    end
    column :enrolled_on
    actions
  end

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
