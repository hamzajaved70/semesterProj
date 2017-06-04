require 'test_helper'

class LappointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lappointment = lappointments(:one)
  end

  test "should get index" do
    get lappointments_url
    assert_response :success
  end

  test "should get new" do
    get new_lappointment_url
    assert_response :success
  end

  test "should create lappointment" do
    assert_difference('Lappointment.count') do
      post lappointments_url, params: { lappointment: {  } }
    end

    assert_redirected_to lappointment_url(Lappointment.last)
  end

  test "should show lappointment" do
    get lappointment_url(@lappointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_lappointment_url(@lappointment)
    assert_response :success
  end

  test "should update lappointment" do
    patch lappointment_url(@lappointment), params: { lappointment: {  } }
    assert_redirected_to lappointment_url(@lappointment)
  end

  test "should destroy lappointment" do
    assert_difference('Lappointment.count', -1) do
      delete lappointment_url(@lappointment)
    end

    assert_redirected_to lappointments_url
  end
end
