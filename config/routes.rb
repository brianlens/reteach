Rails.application.routes.draw do
  devise_for :users
  root 'school#index'
end
