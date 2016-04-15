class EducationController < ApplicationController

  def index
    @educations = Education.all
  end

  def new
    @education = Education.new
  end

end
