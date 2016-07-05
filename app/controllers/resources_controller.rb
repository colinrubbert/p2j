class ResourcesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update]

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    current_user.resources.create(resource_params)
    redirect_to resources_path
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.update_attributes(resource_params)
    redirect_to resources_path
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    redirect_to resources_path
  end

  private

  def resource_params
    params.require(:resource).permit(:category, :sub_category, :title, :description, :web_url, :is_affiliate)
  end

end
