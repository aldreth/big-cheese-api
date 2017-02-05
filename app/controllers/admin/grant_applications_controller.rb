module Admin
  class GrantApplicationsController < Admin::ApplicationController
    # GET /grant_applications
    def index
      @grant_applications = GrantApplication.all

      render json: @grant_applications.order(created_at: :desc)
    end
  end
end
