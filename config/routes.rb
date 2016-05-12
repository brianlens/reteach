Rails.application.routes.draw do
  get  'hello_world', to: 'hello_world#index'
  get  'reviews/index'
  get  'reviews/show'
  get  'reviews/new'
  post 'reviews/create'
  get  'teachers/index'
  get  'teachers/show'
  get  'schools/show'
  get  'schools/index'


  devise_for :users
  root 'schools#index'
end
