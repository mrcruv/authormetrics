Rails.application.routes.draw do
  resources :commenti
  resources :rating_articoli
  resources :articoli_preferiti
  resources :recensioni_autori
  resources :rating_autori
  resources :autori_preferiti
  resources :scritto
  resources :articoli
  resources :autori
  resources :bans
  resources :amministratori
  resources :utenti
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
