class Resource < ActiveRecord::Base
  belongs_to :user

  RESOURCE_CATEGORY = {
    'Design' => 'Design',
    'Development' => 'Development',
    'Business' => 'Business'
  }

  RESOURCE_SUB_CATEGORY = {
    'Color' => 'Color',
    'Stock Photos' => 'Stock Photos',
    'Icons' => 'Icons'
  }

end
