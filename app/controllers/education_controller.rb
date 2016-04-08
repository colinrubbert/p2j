class EducationController < ApplicationController

  def index
    @educations = Education.all
  end

end
