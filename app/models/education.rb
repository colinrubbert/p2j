class Education < ActiveRecord::Base
  belongs_to :user
  has_many :education_reviews

  COURSE_TYPES = {
    'Online Self Paced' => 'Online Self Paced',
    'Online Bootcamp' => 'Online Bootcamp',
    'Campus Bootcamp' => 'Campus Bootcamp'
  }

  COURSE_CATEGORY = {
    'Full-Stack Developer' => 'Full-Stack Developer',
    'Front-End Developer' => 'Front-End Developer',
    'UI/UX Developer' => 'UI/UX Developer',
    'Backend Developer' => 'Backend Developer'
  }

  COURSE_LANGUAGE = {
    'Ruby on Rails' => 'Ruby on Rails',
    'JavaScript' => 'JavaScript',
    'ReactJS' => 'ReactJS',
    'Swift' => 'Swift',
    'AngularJS' => 'AngularJS',
    'MeteorJS' => 'MeteorJS',
    'C#' => 'C#',
    'Python' => 'Python'
  }

end
