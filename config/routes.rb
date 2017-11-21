Rails.application.routes.draw do
  resources :homes
  get 'home/index'

  root 'home#index'

  get '/test', to: 'test#test'

  get '/sql', to: 'test#sql'

  get '/test_params/:id', to: 'test#para'

  post '/test_params', to: 'test#test_validation'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
