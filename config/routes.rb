Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :med_certificates
  resources :clinics, :doctors, :medcards, :pacients, :repartments, :specializations
end
