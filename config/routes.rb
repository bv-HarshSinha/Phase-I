Rails.application.routes.draw do
  root "users#index"
  get '/signup' => 'user#new'
  post '/users' => 'user#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  #get "show_article", to: "articles#show"
  resources :users do
    #collection do
    #  get "articles"
    resources :articles
    #end
  end
end
