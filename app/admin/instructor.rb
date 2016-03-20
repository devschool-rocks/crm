ActiveAdmin.register Instructor do
  menu priority: 3

  permit_params :name

  show do
    attributes_table do
      row :name
      table_for instructor.students.order('name ASC') do
        column "Students" do |student|
          link_to student.name, [ :admin, student ]
        end
      end
    end

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
