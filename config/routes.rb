Rails.application.routes.draw do

  resources :records
   root 'application#index'

   devise_for :users

   resources :patients
   resources :users

end
