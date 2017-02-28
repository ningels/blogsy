Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/posts/:id' => 'posts#show'
   get "/posts" => 'posts#index'
   get "/users" => 'users#index'
   get "posts/:id/comments" => 'posts#show_comments'
   post '/users' => 'users#create'
   post '/posts' => 'posts#create'

end
