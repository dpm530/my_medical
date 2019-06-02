Rails.application.routes.draw do

  resources :progress_notes
   root 'application#index'

   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)


   devise_for :users

   resources :users

   resources :to_do_lists
   resources :general_informations
   resources :health_insurances
   resources :family_histories
   resources :emergency_contacts
   resources :immunizations
   resources :diagnoses



   resources :patients

   resources :medications

   resources :allergies


end
