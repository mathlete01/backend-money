Rails.application.routes.draw do
  resources :clicks
  resources :steps
  resources :rows
  resources :credit_card_debts
  resources :users
  patch "users", to: "users#update"
  post "/login", to: "users#login"
  get "/getuser", to: "users#getuser"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '*path', to: 'application#cors_preflight_check', via: [:options]
end
