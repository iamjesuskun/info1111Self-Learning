 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
 
  resources :people_details
  root to: "main#index"
  
  get "sign_up", to: "registrations#new"
  
  get "profile", to: "profile#index", as: :profile 
# GET /about
  get "about-us", to: "about#index", as: :about

  get 'search', to: "search#index", as: :search_page
  resources :posts
  
end