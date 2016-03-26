ActiveAdmin.register Student do
  menu priority: 2

  permit_params :first_name, :last_name, :email, :slack_name,
    :birthday, :enrolled_on, :instructor_id, :size_id, :gender_id,
    address_attributes: [:id, :street_1, :street_2, :state, :postal_code]

  form partial: 'form'

  index do
    column :name
    column :slack_name
    column :email
    column :birthday do |student|
      student.birthday_month_day
    end
    column :enrolled_on
    actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :slack_name
      row :birthday
      row :enrolled_on

      table_for student.address do
        column :street_1
        column :street_2
        column :state
        column :postal_code
        column :country
      end
    end
  end
end
