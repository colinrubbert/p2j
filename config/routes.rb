Rails.application.routes.draw do

  root 'educations#index'

  resources :educations

end
