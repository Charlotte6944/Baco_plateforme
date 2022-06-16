Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controller: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'users/show', to: 'users/sessions#show'
  end
  resources :users do
    resources :tournois do
      resources :inscriptions_tournois, only: [:update]
    end
  end

  resources :tournois do
    resources :inscriptions_tournois, only: %i[new create]
  end

  scope :admin do
    get '', to: 'pages#admin'
  end

  resources :tournois, only: %i[index new create destroy update]
  resources :inscriptions_tournois, only: %i[index]

  match '*path' => redirect('/'), via: :get
end
