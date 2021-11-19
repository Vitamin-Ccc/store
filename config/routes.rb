Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "stores#index"
  # get "/stores", to: root"stores#index"
  # get "/stores/new", to: "stores#new"
  # post "/stores", to: "stores#create"
  # get "/stores/:id", to: "stores#show"
  # get "/stores/:id/edit", to: "stores#edit"
  # patch "/stores/:id", to: "stores#update"
  # delete "/stores/:id", to: "stores#destroy"
  resources :stores do
    resources :items
  end

end
