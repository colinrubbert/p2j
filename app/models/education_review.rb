class EducationReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :education

  RATINGS = {
    '1 out of 5' => '1_star',
    '2 out of 5' => '2_stars',
    '3 out of 5' => '3_stars',
    '4 out of 5' => '4_stars',
    '5 out of 5' => '5_stars'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

end
