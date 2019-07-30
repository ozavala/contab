Rails.application.routes.draw do
  resources :gl_transactions
  resources :gl_accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
