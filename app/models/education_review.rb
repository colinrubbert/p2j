class EducationReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :education
end
