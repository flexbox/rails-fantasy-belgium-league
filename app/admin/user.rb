ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

form do |f|
    f.inputs "Identity" do
      f.input :name
      f.input :email
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

permit_params :nickname, :email, :first_name, :last_name

index do
    selectable_column
    column :id
    column :email
    column :nickname
    column :first_name
    column :last_name
    column :created_at
    column :admin
    actions
  end


# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
