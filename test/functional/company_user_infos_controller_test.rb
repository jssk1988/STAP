require 'test_helper'

class CompanyUserInfosControllerTest < ActionController::TestCase
  setup do
    @company_user_info = company_user_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_user_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_user_info" do
    assert_difference('CompanyUserInfo.count') do
      post :create, company_user_info: @company_user_info.attributes
    end

    assert_redirected_to company_user_info_path(assigns(:company_user_info))
  end

  test "should show company_user_info" do
    get :show, id: @company_user_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_user_info.to_param
    assert_response :success
  end

  test "should update company_user_info" do
    put :update, id: @company_user_info.to_param, company_user_info: @company_user_info.attributes
    assert_redirected_to company_user_info_path(assigns(:company_user_info))
  end

  test "should destroy company_user_info" do
    assert_difference('CompanyUserInfo.count', -1) do
      delete :destroy, id: @company_user_info.to_param
    end

    assert_redirected_to company_user_infos_path
  end
end
