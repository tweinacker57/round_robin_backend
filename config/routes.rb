Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/books" => "books#index"
    get "/books/:id" => "books#show"

    post "/book_users" => "book_users#create"
    get "/book_users" => "book_users#index"
    patch "/book_users/:id" => "book_users#update"
    get "/book_users/:id" => "book_users#show"

    get "/clubs/:id" => "clubs#show"
    post "/clubs" => "clubs#create"
  end
end
