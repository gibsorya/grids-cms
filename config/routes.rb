Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/login' => 'devise/sessions#create'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
