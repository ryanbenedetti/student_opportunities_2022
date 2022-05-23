Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'opportunities#index'
  resources :levels
  resources :opportunities

  match 'pages/:action', :controller => "opportunities", via: [:get]

end
