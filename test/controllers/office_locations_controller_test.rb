require 'test_helper'

class OfficeLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @office_location = office_locations(:one)
  end

  test "should get index" do
    get office_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_office_location_url
    assert_response :success
  end

  test "should create office_location" do
    assert_difference('OfficeLocation.count') do
      post office_locations_url, params: { office_location: { Physician_id: @office_location.Physician_id, phone: @office_location.phone, street_address: @office_location.street_address, zip_code: @office_location.zip_code } }
    end

    assert_redirected_to office_location_url(OfficeLocation.last)
  end

  test "should show office_location" do
    get office_location_url(@office_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_office_location_url(@office_location)
    assert_response :success
  end

  test "should update office_location" do
    patch office_location_url(@office_location), params: { office_location: { Physician_id: @office_location.Physician_id, phone: @office_location.phone, street_address: @office_location.street_address, zip_code: @office_location.zip_code } }
    assert_redirected_to office_location_url(@office_location)
  end

  test "should destroy office_location" do
    assert_difference('OfficeLocation.count', -1) do
      delete office_location_url(@office_location)
    end

    assert_redirected_to office_locations_url
  end
end
