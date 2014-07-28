json.array!(@exersizes) do |exersize|
  json.extract! exersize, :id, :exercise_performed, :load_perscribed, :reps_perscribed, :sets_perscribed, :actual_weight_lifted_1, :actual_weight_lifted_2, :actual_weight_lifted_3, :workout_id, :user_id
  json.url exersize_url(exersize, format: :json)
end
