Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    collection { post :import }
  end
end
