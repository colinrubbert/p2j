Rails.application.routes.draw do

  root 'education#index'

  resources :education

end
