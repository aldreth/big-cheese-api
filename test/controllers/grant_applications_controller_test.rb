require 'test_helper'

class GrantApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grant_application = grant_applications(:one)
  end

  test "should get index" do
    get grant_applications_url, as: :json
    assert_response :success
  end

  test "should create grant_application" do
    assert_difference('GrantApplication.count') do
      post grant_applications_url, params: { grant_application: { amount: @grant_application.amount, description: @grant_application.description, name: @grant_application.name, postcode: @grant_application.postcode } }, as: :json
    end

    assert_response 201
  end

  test "should show grant_application" do
    get grant_application_url(@grant_application), as: :json
    assert_response :success
  end

  test "should update grant_application" do
    patch grant_application_url(@grant_application), params: { grant_application: { amount: @grant_application.amount, description: @grant_application.description, name: @grant_application.name, postcode: @grant_application.postcode } }, as: :json
    assert_response 200
  end

  test "should destroy grant_application" do
    assert_difference('GrantApplication.count', -1) do
      delete grant_application_url(@grant_application), as: :json
    end

    assert_response 204
  end
end
