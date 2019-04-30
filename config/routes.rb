Rails.application.routes.draw do
  root 'home#index'
  post '/start_service', to: 'home#start_service'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
