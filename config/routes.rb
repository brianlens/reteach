Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  post 'reviews/create'

  devise_for :users
  root 'schools#index'
end
