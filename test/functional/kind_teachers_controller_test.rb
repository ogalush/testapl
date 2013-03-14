require 'test_helper'

class KindTeachersControllerTest < ActionController::TestCase
  setup do
    @kind_teacher = kind_teachers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kind_teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kind_teacher" do
    assert_difference('KindTeacher.count') do
      post :create, kind_teacher: { comment: @kind_teacher.comment, email: @kind_teacher.email, name: @kind_teacher.name }
    end

    assert_redirected_to kind_teacher_path(assigns(:kind_teacher))
  end

  test "should show kind_teacher" do
    get :show, id: @kind_teacher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kind_teacher
    assert_response :success
  end

  test "should update kind_teacher" do
    put :update, id: @kind_teacher, kind_teacher: { comment: @kind_teacher.comment, email: @kind_teacher.email, name: @kind_teacher.name }
    assert_redirected_to kind_teacher_path(assigns(:kind_teacher))
  end

  test "should destroy kind_teacher" do
    assert_difference('KindTeacher.count', -1) do
      delete :destroy, id: @kind_teacher
    end

    assert_redirected_to kind_teachers_path
  end
end
