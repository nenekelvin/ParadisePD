Rails.application.routes.draw do
  resources :comments
  get 'pages/info'
  
  resources :casts
root to: redirect('/casts')  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
