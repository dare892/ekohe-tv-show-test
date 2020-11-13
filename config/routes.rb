Rails.application.routes.draw do
  get '/search' => 'pages#dashboard'
  devise_for :users
  root to: "pages#dashboard"
end
