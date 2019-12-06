Rails.application.routes.draw do
  root "sessions#index"
  resources :sessions, only: [:index, :create]
  delete '/logout' => "sessions#destroy", as: 'signout'
  resources :users
  get '/salary/:id' => "users#form_2", as: 'salary' 
  post 'temp' => "users#temp"
  get '/salary/view/:id' => "users#show_2", as: 'suman'
  get '/payslip/:id' => "users#payslip", as:'payslip'
end
