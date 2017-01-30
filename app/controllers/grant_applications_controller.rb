class GrantApplicationsController < ApplicationController
  before_action :set_grant_application, only: [:show, :update, :destroy]

  # GET /grant_applications
  def index
    @grant_applications = GrantApplication.all

    render json: @grant_applications
  end

  # GET /grant_applications/1
  def show
    render json: @grant_application
  end

  # POST /grant_applications
  def create
    @grant_application = GrantApplication.new(grant_application_params)

    if @grant_application.save
      render json: @grant_application, status: :created, location: @grant_application
    else
      render json: @grant_application.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grant_applications/1
  def update
    if @grant_application.update(grant_application_params)
      render json: @grant_application
    else
      render json: @grant_application.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grant_applications/1
  def destroy
    @grant_application.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grant_application
      @grant_application = GrantApplication.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grant_application_params
      params.require(:grant_application).permit(:name, :postcode, :amount, :description)
    end
end
