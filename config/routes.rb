Rails.application.routes.draw do
  root 'sessions#index'
  get :signin, to: 'sessions#new', as: :signin
  resources :sessions, only: :create
  delete :signout, to: 'sessions#destroy', as: :signout

  get :signup, to: 'users#new', as: :signup

  resources :projects
end
