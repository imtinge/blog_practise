Rails.application.routes.draw do
  get '/about', to: 'pages#about', as: :about

  resources :posts
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
