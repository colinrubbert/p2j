class ApprenticeshipsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @apprenticeships = Apprenticeship.all
  end

  def new
    @apprenticeship = Apprenticeship.new
  end

  def create
    current_user.apprenticeships.create(apprenticeship_params)
    redirect_to apprenticeships_path
  end

  def show
    @apprenticeship = Apprenticeship.find(params[:id])
    @apprenticeship_review = ApprenticeshipReview.new
  end

  def edit
    @apprenticeship = Apprenticeship.find(params[:id])
  end

  def update
    @apprenticeship = Apprenticeship.find(params[:id])
    @apprenticeship.update_attributes(apprenticeship_params)
    redirect_to apprenticeships_path
  end

  def destroy
    @apprenticeship = Apprenticeship.find(params[:id])
    @apprenticeship.destroy
    redirect_to apprenticeships_path
  end


  private

  def apprenticeship_params
    params.require(:apprenticeship).permit(:name, :description, :category, :location, :language, :paid, :web_url, :logo_location)
  end

end
