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

  # ou scope
  namespace :admin do
    resources :inscriptions_tournois, only: %i[index show]
  end

  resources :tournois
  resources :inscriptions_tournois

  match '*path' => redirect('/'), via: :get
end
