Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  post 'like', to: 'favorites#create', as: 'favorite'
  delete 'unlike', to: 'favorites#destroy', as: 'delete_favorite'
end
