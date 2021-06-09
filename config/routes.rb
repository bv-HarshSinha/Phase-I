Rails.application.routes.draw do
  root "users#index"
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  #get "show_article", to: "articles#show"
  resources :users
  resources :articles
    #end
end
