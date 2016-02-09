require 'resque/server'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  mount Resque::Server.new, at: '/resque'

  namespace :api do
    namespace :v1 do
      resources :sessions
      resources :users
      resources :genres
    end
  end
end
