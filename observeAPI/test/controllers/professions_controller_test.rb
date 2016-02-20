require 'test_helper'

class ProfessionsControllerTest < ActionController::TestCase
  setup do
    @profession = professions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professions)
  end

  test "should create profession" do
    assert_difference('Profession.count') do
      post :create, profession: { name: @profession.name, prof_id: @profession.prof_id }
    end

    assert_response 201
  end

  test "should show profession" do
    get :show, id: @profession
    assert_response :success
  end

  test "should update profession" do
    put :update, id: @profession, profession: { name: @profession.name, prof_id: @profession.prof_id }
    assert_response 204
  end

  test "should destroy profession" do
    assert_difference('Profession.count', -1) do
      delete :destroy, id: @profession
    end

    assert_response 204
  end
end
