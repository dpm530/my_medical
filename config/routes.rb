Rails.application.routes.draw do

  resources :health_insurances
  resources :family_histories
  resources :emergency_contacts
  resources :diagnoses
  resources :immunizations
  resources :general_informations
   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)
      root 'application#index'

   devise_for :users

   resources :patients
   resources :users
   resources :medications

   resources :allergies


end
