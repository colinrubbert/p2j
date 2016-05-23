Rails.application.routes.draw do

  devise_for :users
  root 'educations#index'

  resources :educations do
    resources :education_reviews, only: :create
  end

end
