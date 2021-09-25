Rails.application.routes.draw do https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: :index do
    resources :bookmarks
  end
end
