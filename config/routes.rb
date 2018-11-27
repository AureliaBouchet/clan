Rails.application.routes.draw do
  root to: 'pages#home'
  resources :subsidies, only: :index do
    resources :repayments, only: [:new, :create]
  end
end
