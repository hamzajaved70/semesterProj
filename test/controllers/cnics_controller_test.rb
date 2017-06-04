require 'test_helper'

class CnicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cnic = cnics(:one)
  end

  test "should get index" do
    get cnics_url
    assert_response :success
  end

  test "should get new" do
    get new_cnic_url
    assert_response :success
  end

  test "should create cnic" do
    assert_difference('Cnic.count') do
      post cnics_url, params: { cnic: {  } }
    end

    assert_redirected_to cnic_url(Cnic.last)
  end

  test "should show cnic" do
    get cnic_url(@cnic)
    assert_response :success
  end

  test "should get edit" do
    get edit_cnic_url(@cnic)
    assert_response :success
  end

  test "should update cnic" do
    patch cnic_url(@cnic), params: { cnic: {  } }
    assert_redirected_to cnic_url(@cnic)
  end

  test "should destroy cnic" do
    assert_difference('Cnic.count', -1) do
      delete cnic_url(@cnic)
    end

    assert_redirected_to cnics_url
  end
end
