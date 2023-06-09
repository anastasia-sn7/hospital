Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :med_certificates
  resources :clinics, :doctors, :medcards, :pacients, :repartments, :specializations
  resources :clinics do
    collection do
      get '/searchByNames', to: 'clinics#searchByNames'
    end
  end
  resources :pacients do
    collection do
      get '/searchByNames', to: 'pacients#searchByNames'
    end
  end
  get '/download' =>'downloader#download'
  get '/downloadAll/:id' => 'downloader#downloadAll', as: 'downloadAll'
  get '/downloadUsers' =>'downloader#downloadUsers'
  get '/downloadCsv' =>'downloader#downloadCsv'
end
