Rails.application.routes.draw do
 devise_for :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  post 'welcome/search', to: "welcome#search"
  get 'welcome/search', to: "welcome#search"
  
  resources :rooms
  resources :hotels do
    resources :rooms
  end
  
  resources :bookings
  
  get 'search_rooms', to: "rooms#search_rooms"
  post 'search_rooms', to: "rooms#search_rooms"
  
  
end
