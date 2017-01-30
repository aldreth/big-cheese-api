class GrantApplicationsController < ApplicationController
  # POST /grant_applications
  def create
    @grant_application = GrantApplication.new(grant_application_params)

    if @grant_application.save
      render json: @grant_application, status: :created
    else
      render json: @grant_application.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def grant_application_params
      params.require(:grant_application).permit(:name, :postcode, :amount, :description)
    end
end
