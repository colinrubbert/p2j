class EducationReviewsController < ApplicationController
  before_action :authenticate_user!
  def create
    @education = Education.find(params[:education_id])
    @education.education_reviews.create(education_review_params.merge(user: current_user))
    redirect_to education_path(@education)
  end

  private

  def education_review_params
    params.require(:education_review).permit(:title, :rating, :description)
  end
end
