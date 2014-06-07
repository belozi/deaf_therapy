require 'test_helper'

class MoodFormsControllerTest < ActionController::TestCase
  setup do
    @mood_form = mood_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mood_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mood_form" do
    assert_difference('MoodForm.count') do
      post :create, mood_form: { comment: @mood_form.comment, mood: @mood_form.mood, panic: @mood_form.panic }
    end

    assert_redirected_to mood_form_path(assigns(:mood_form))
  end

  test "should show mood_form" do
    get :show, id: @mood_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mood_form
    assert_response :success
  end

  test "should update mood_form" do
    patch :update, id: @mood_form, mood_form: { comment: @mood_form.comment, mood: @mood_form.mood, panic: @mood_form.panic }
    assert_redirected_to mood_form_path(assigns(:mood_form))
  end

  test "should destroy mood_form" do
    assert_difference('MoodForm.count', -1) do
      delete :destroy, id: @mood_form
    end

    assert_redirected_to mood_forms_path
  end
end
