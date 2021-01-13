require 'test_helper'

class HospitalizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hospitalization = hospitalizations(:one)
  end

  test "should get index" do
    get hospitalizations_url
    assert_response :success
  end

  test "should get new" do
    get new_hospitalization_url
    assert_response :success
  end

  test "should create hospitalization" do
    assert_difference('Hospitalization.count') do
      post hospitalizations_url, params: { hospitalization: { admit: @hospitalization.admit, date: @hospitalization.date, discharge: @hospitalization.discharge, reasons: @hospitalization.reasons } }
    end

    assert_redirected_to hospitalization_url(Hospitalization.last)
  end

  test "should show hospitalization" do
    get hospitalization_url(@hospitalization)
    assert_response :success
  end

  test "should get edit" do
    get edit_hospitalization_url(@hospitalization)
    assert_response :success
  end

  test "should update hospitalization" do
    patch hospitalization_url(@hospitalization), params: { hospitalization: { admit: @hospitalization.admit, date: @hospitalization.date, discharge: @hospitalization.discharge, reasons: @hospitalization.reasons } }
    assert_redirected_to hospitalization_url(@hospitalization)
  end

  test "should destroy hospitalization" do
    assert_difference('Hospitalization.count', -1) do
      delete hospitalization_url(@hospitalization)
    end

    assert_redirected_to hospitalizations_url
  end
end
