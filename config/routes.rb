Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controller: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'users/show', to: 'users/sessions#show'
  end
end
