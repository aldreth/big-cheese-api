require 'test_helper'

module Admin
  class GrantApplicationsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @grant_application = grant_applications(:one)
    end

    test "should get index" do
      get admin_grant_applications_url, as: :json
      assert_response :success
    end
  end
end
