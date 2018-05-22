Rails.application.routes.draw do
  resources :users, :welcome, :posts

  root to: 'welcome#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/usershow' => 'users#show'

  get '/newpost' => 'posts#new'
  post '/post' => 'posts#create'
  get '/delete' => 'posts#destroy'
  get '/all' => 'posts#index'

  get '/newreply' => 'replies#new'
  post '/reply' => 'replies#create'

end
