Rails.application.routes.draw do
  root "sessions#index"
  resources :sessions, only: [:index, :create]
  delete '/logout' => "sessions#destroy", as: 'signout'
  resources :users
  get '/salary/:id' => "users#form_2", as: 'salary' 
  post 'temp' => "users#temp"
  get '/salary/view/:id' => "users#show_2", as: 'suman'
  get '/payslip/:id' => "users#payslip", as:'payslip'
  get '/payslip_1/:id' => "users#payslip_1", as:'payslip_1'
   resources :users do
   get 'download'
end 
end
