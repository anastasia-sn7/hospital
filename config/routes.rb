Rails.application.routes.draw do
  resources :pacients
  resources :medcards
  resources :specializations
  resources :doctors
  resources :repartments
  resources :clinics
  resources :clinics, :doctors, :medcards, :pacients, :repartments, :specializations
end
