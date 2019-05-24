Rails.application.routes.draw do

   root 'application#index'

   devise_for :users

   resources :patients
   resources :users
   resources :allergies
   resources :medications

   resources :records


end
