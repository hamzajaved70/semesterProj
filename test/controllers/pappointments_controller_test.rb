require 'test_helper'

class PappointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pappointment = pappointments(:one)
  end

  test "should get index" do
    get pappointments_url
    assert_response :success
  end

  test "should get new" do
    get new_pappointment_url
    assert_response :success
  end

  test "should create pappointment" do
    assert_difference('Pappointment.count') do
      post pappointments_url, params: { pappointment: {  } }
    end

    assert_redirected_to pappointment_url(Pappointment.last)
  end

  test "should show pappointment" do
    get pappointment_url(@pappointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_pappointment_url(@pappointment)
    assert_response :success
  end

  test "should update pappointment" do
    patch pappointment_url(@pappointment), params: { pappointment: {  } }
    assert_redirected_to pappointment_url(@pappointment)
  end

  test "should destroy pappointment" do
    assert_difference('Pappointment.count', -1) do
      delete pappointment_url(@pappointment)
    end

    assert_redirected_to pappointments_url
  end
end
