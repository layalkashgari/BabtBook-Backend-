Rails.application.routes.draw do
  # get '/welcome'
#   get 'welcome/show'
#   get 'pages/index'
#   get 'pages/show'
#   get 'pages/edit'
#   get 'pages/new'
#   get 'texts/index'
#   get 'texts/show'
#   get 'texts/edit'
#   get 'texts/new'
#   get 'images/index'
#   get 'images/show'
#   get 'images/edit'
#   get 'images/new'
#   get 'books/index'
#   get 'books/show'
#   get 'books/edit'
#   get 'books/new'
#   get 'users/index'
#   get 'users/show'
#  put 'users/edit'
#   get 'users/new'

# from jackis auth 

get "/books", to: "books#index"
# get "/books", to: "books#show"

get"/books/pages", to:"books#create"
post "/users", to: "users#create"
get "/users/:id", to: "users#show"
get "/users/:id/books", to: "books#index"
get "/books/:id", to: "books#show"
post "/texts", to: "texts#create"
post "/books", to: "books#create" 
get "/texts", to: "texts#index"
# get "/texts", to: "texts#show"

post "/images", to: "images#create"


# ask 


post "/login", to: "sessions#create"
put "/texts", to: "texts#update" 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
