Rails.application.routes.draw do
  get '/' => 'pages#home'

  resources :groups do
    resources :students
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
