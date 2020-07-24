require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  authenticate :user do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    mount Sidekiq::Web => '/sidekiq'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'ping',     to: 'ping#show'
  get 'version',  to: 'version#show'
end
