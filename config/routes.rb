Rails.application.routes.draw do

  resources :to_do_lists
  resources :general_informations
  resources :health_insurances
  resources :family_histories
  resources :emergency_contacts
  resources :immunizations
  resources :diagnoses
   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)
      root 'application#index'

   devise_for :users

   resources :patients
   resources :users
   resources :medications

   resources :allergies


end
