require 'test_helper'

class ProfessionalsControllerTest < ActionController::TestCase
  setup do
    @professional = professionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professionals)
  end

  test "should create professional" do
    assert_difference('Professional.count') do
      post :create, professional: { professionid: @professional.professionid, userid: @professional.userid }
    end

    assert_response 201
  end

  test "should show professional" do
    get :show, id: @professional
    assert_response :success
  end

  test "should update professional" do
    put :update, id: @professional, professional: { professionid: @professional.professionid, userid: @professional.userid }
    assert_response 204
  end

  test "should destroy professional" do
    assert_difference('Professional.count', -1) do
      delete :destroy, id: @professional
    end

    assert_response 204
  end
end
