Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resources :events do
    resources :participations, only: [:create] do
      # member do
      #   patch :approve
      #   patch :decline
      #   patch :reject
      # end
    end
  end

  resources :participations, only: [:create] do
    member do
      patch 'approve'
      patch 'reject'
    end
    collection do
      get 'pending', as: 'pending'
    end

  end
end
