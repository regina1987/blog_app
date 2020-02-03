Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'posts/index'
get 'posts/dashboard', to: 'posts#dashboard'


post 'posts',  to: 'posts#create'

root 'posts#index'
end
