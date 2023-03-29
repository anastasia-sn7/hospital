Rails.application.routes.draw do
  resources :med_certificates
  resources :clinics, :doctors, :medcards, :pacients, :repartments, :specializations
end
