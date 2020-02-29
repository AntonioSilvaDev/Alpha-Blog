Rails.application.routes.draw do
  get 'welcome/home'
  get '/about', to: 'welcome#about'
  get '/signup', to: 'users#new'

  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles
  resources :users, except: [:new]
end
