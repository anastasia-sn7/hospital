Rails.application.routes.draw do
  root to: "home#index"
  resources :med_certificates
  resources :clinics, :doctors, :medcards, :pacients, :repartments, :specializations
end
