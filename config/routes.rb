Rails.application.routes.draw do
  root 'home#index'
  post '/start_service', to: 'home#start_service'
  post '/end_service', to: 'home#end_service'
  post '/get_log', to: 'home#get_log'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
