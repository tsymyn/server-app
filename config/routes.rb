Rails.application.routes.draw do
  #get 'orders/index'
  #resources :orders, only: [:index]
  # API definition
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders
    end
  end
end
