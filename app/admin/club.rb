ActiveAdmin.register Club do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#

menu label: "Клуби"

permit_params do
  permitted = [:permitted, :attributes]
  permitted << :other if params[:action] == 'create' && current_user.admin?
  permitted
end

	index do
	    selectable_column
	    id_column
	    column :name
	    column :peoples
	  	column :coachs
	  	column :size
	  	column :dateofcreate
	  	column :cofunder
	  	column :price
	  	column :coacviewshs








	      actions
	  end

end
