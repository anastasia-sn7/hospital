Rails.application.routes.draw do
  resources :clinics, :doctors, :medcards, :pacients, :repartments, :specializations
end
