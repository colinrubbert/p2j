Rails.application.routes.draw do

  devise_for :users
  root 'educations#index'

  resources :educations

end
