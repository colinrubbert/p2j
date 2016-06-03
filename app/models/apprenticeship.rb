class Apprenticeship < ActiveRecord::Base
  belongs_to :user

  APPRENTICE_TYPES = {
    'Online Apprenticeship' => 'Online Apprenticeship',
    'In Person Apprenticeship'=> 'In Person Apprenticeship'
  }

  APPRENTICESHIP_CATEGORY = {
    'Full-Stack Developer' => 'Full-Stack Developer',
    'Front-End Developer' => 'Front-End Developer',
    'UI/UX Developer' => 'UI/UX Developer',
    'Backend Developer' => 'Backend Developer',
    'Design' => 'Design'
  }

  APPRENTICESHIP_LANGUAGE = {
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
