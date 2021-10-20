# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  resources :lists do
    resources :bookmarks
  end
  resources :movies, only: %i[index new create destroy]
end
