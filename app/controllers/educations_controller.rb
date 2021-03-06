class EducationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @educations = Education.all
  end

  def new
    @education = Education.new
  end

  def create
    current_user.educations.create(education_params)
    redirect_to root_path
  end

  def show
    @education = Education.find(params[:id])
    @education_review = EducationReview.new
  end

  def edit
    @education = Education.find(params[:id])
  end

  def update
    @education = Education.find(params[:id])
    @education.update_attributes(education_params)
    redirect_to root_path
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    redirect_to root_path
  end


  private

  def education_params
    params.require(:education).permit(:name, :description, :category, :location, :language,  :course_type, :web_url, :logo_location)
  end

end
