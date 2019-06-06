Rails.application.routes.draw do

   root 'application#index'

   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)


   devise_for :users

   resources :users do
      collection do
         get 'show_staff' => 'users#show_staff'
      end
   end

   resources :treatment_plan_notes
   resources :intake_notes
   resources :progress_notes
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
