Rails.application.routes.draw do
  root "users#index"
  #get "show_article", to: "articles#show"
  resources :users
    resources :articles
end