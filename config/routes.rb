Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controller: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'users/show', to: 'users/sessions#show'
  end
  resources :users do
    resources :inscriptions_tournois do
      resources :tournois
    end
  end

  resources :tournois do
    resources :inscriptions_tournois, only: %i[new create]
  end

  # ou scope
  namespace :admin do
    resources :inscriptions_tournois, only: %i[index show]
  end

  resources :tournois, only: %i[index new create destroy update]
  resources :inscriptions_tournois

  match '*path' => redirect('/'), via: :get
end
