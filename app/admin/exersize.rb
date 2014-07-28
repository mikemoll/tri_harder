ActiveAdmin.register Exersize do
  permit_params :exercise_performed, :load_perscribed, :reps_perscribed, :sets_perscribed, :actual_weight_lifted_1, :actual_weight_lifted_2, :actual_weight_lifted_3

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
