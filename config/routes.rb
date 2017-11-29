Rails.application.routes.draw do
  root 'examples#index'

  resource :session
  resources :examples

  resources :messages do
    resources :comments
  end

  mount ActionCable.server => '/cable'
end
