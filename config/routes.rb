Rails.application.routes.draw do
  resources :credit_card_debts
  resources :users
  patch "users", to: "users#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
