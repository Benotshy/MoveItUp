Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resources :events do
    member do
      get 'manage_participants'
    end
  end

  resources :participations, only: [:create] do
    collection do
      get 'pending'
    end

    member do
      patch 'approve'
      patch 'reject'
    end
  end
end
