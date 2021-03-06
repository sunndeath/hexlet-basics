# frozen_string_literal: true

Rails.application.routes.draw do
  scope module: :web do
    root 'home#index'

    resource :session, only: %i[new create destroy]
    resources :users, only: %i[new create]

    resources :languages, only: [:show] do
      scope module: :languages do
        resources :modules, only: []
      end
    end
  end
end
