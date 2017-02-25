Rails.application.routes.draw do
  
  get '/posts' => 'posts#index'
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  get '/posts/new' => 'posts#new'
  post '/posts' => 'posts#create'

  get '/posts/:id' => 'posts#show'

  get '/posts/:id/edit' => 'posts#edit'
  patch '/posts/:id' => 'posts#update'

  delete '/posts/:id' => 'posts#destroy'


  get '/categories' => 'categories#index'

  get '/categories/new' => 'categories#new'
  post '/categories' => 'categories#create'

  get '/categories/:id' => 'categories#show'

end
