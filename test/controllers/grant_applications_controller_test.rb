require 'test_helper'

class GrantApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grant_application = grant_applications(:one)
  end

  test "should create grant_application" do
    assert_difference('GrantApplication.count') do
      post grant_applications_url, params: { grant_application: { amount: @grant_application.amount, description: @grant_application.description, name: @grant_application.name, postcode: @grant_application.postcode } }, as: :json
    end

    assert_response 201
  end
end
