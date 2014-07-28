require 'test_helper'

class ExersizesControllerTest < ActionController::TestCase
  setup do
    @exersize = exersizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exersizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exersize" do
    assert_difference('Exersize.count') do
      post :create, exersize: { actual_weight_lifted_1: @exersize.actual_weight_lifted_1, actual_weight_lifted_2: @exersize.actual_weight_lifted_2, actual_weight_lifted_3: @exersize.actual_weight_lifted_3, exercise_performed: @exersize.exercise_performed, load_perscribed: @exersize.load_perscribed, reps_perscribed: @exersize.reps_perscribed, sets_perscribed: @exersize.sets_perscribed, user_id: @exersize.user_id, workout_id: @exersize.workout_id }
    end

    assert_redirected_to exersize_path(assigns(:exersize))
  end

  test "should show exersize" do
    get :show, id: @exersize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exersize
    assert_response :success
  end

  test "should update exersize" do
    patch :update, id: @exersize, exersize: { actual_weight_lifted_1: @exersize.actual_weight_lifted_1, actual_weight_lifted_2: @exersize.actual_weight_lifted_2, actual_weight_lifted_3: @exersize.actual_weight_lifted_3, exercise_performed: @exersize.exercise_performed, load_perscribed: @exersize.load_perscribed, reps_perscribed: @exersize.reps_perscribed, sets_perscribed: @exersize.sets_perscribed, user_id: @exersize.user_id, workout_id: @exersize.workout_id }
    assert_redirected_to exersize_path(assigns(:exersize))
  end

  test "should destroy exersize" do
    assert_difference('Exersize.count', -1) do
      delete :destroy, id: @exersize
    end

    assert_redirected_to exersizes_path
  end
end
