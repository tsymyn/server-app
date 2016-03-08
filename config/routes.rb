Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      match 'orders/:id', to: 'orders#show', via: :get, constraints: { id: /[0-9]+/ }
      match 'orders', to: 'orders#show', via: :get, constraints: { id: /[0-9]+/ }
    end
  end
end
