Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'educations#index'

  resources :educations do
    resources :education_reviews, only: :create
  end

  resources :apprenticeships

end
