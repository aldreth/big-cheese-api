module Admin
  class GrantApplicationsController < Admin::ApplicationController
    # GET /grant_applications
    def index
      @grant_applications = GrantApplication.all

      render json: @grant_applications
    end
  end
end
