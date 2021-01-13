Rails.application.routes.draw do
  resources :hospitalizations
  resources :treatments
  resources :appointments
  resources :diagnoses
  resources :diets
  devise_for :doctors
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"
end
