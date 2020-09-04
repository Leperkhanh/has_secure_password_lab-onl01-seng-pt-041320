Rails.application.routes.draw do
  get 'welcome/home', to: 'welcome#home'
  root 'welcome#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
